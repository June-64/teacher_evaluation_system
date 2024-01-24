import {Inject, Provide} from '@midwayjs/decorator';
import {BaseService, CoolCommException} from '@cool-midway/core';
import {InjectEntityModel} from '@midwayjs/typeorm';
import {Repository} from 'typeorm';
import {UserInfoEntity} from '../entity/info';
import {CoolFile} from '@cool-midway/file';
import {TeacherInfoEntity} from '../entity/teacher';
import {ClassInfoEntity} from '../entity/class';
import {DictInfoEntity} from '../../dict/entity/info';
import {TeacherClassEntity} from '../entity/teacher_class';
import {CommentListEntity} from "../entity/comment_list";
import {CommentInfoEntity} from "../entity/comment_info";
import {CommentAnswerEntity} from "../entity/comment_answer";
import {StudentInfoEntity} from "../entity/student";

/**
 * 用户信息
 */
@Provide()
export class TeacherService extends BaseService {
    @InjectEntityModel(UserInfoEntity)
    userInfoEntity: Repository<UserInfoEntity>;

    @InjectEntityModel(TeacherInfoEntity)
    teacherInfoEntity: Repository<TeacherInfoEntity>;

    @InjectEntityModel(ClassInfoEntity)
    classInfoEntity: Repository<ClassInfoEntity>;

    @InjectEntityModel(DictInfoEntity)
    dictInfoEntity: Repository<DictInfoEntity>;

    @InjectEntityModel(TeacherClassEntity)
    teacherClassEntity: Repository<TeacherClassEntity>;

    @InjectEntityModel(CommentListEntity)
    commentListEntity: Repository<CommentListEntity>;

    @InjectEntityModel(CommentInfoEntity)
    commentInfoEntity: Repository<CommentInfoEntity>;

    @InjectEntityModel(CommentAnswerEntity)
    commentAnswerEntity: Repository<CommentAnswerEntity>;

    @InjectEntityModel(StudentInfoEntity)
    studentInfoEntity: Repository<StudentInfoEntity>;

    @Inject()
    file: CoolFile;

    // 检查当前用户是否已经绑定教师信息
    async getTeacherByUserID(id: number) {
        const teacher = await this.teacherInfoEntity.findOneBy({userID: id});
        if (!teacher) {
            throw new CoolCommException('未绑定教师信息');
        }
        return teacher;
    }

    // 添加教师信息
    async bindTeacher(body, id: number) {
        const {teacherName, collegeID, teacherTitle, classIDs} = body;
        const teacher = await this.teacherInfoEntity.findOneBy({userID: id});
        if (teacher) {
            throw new CoolCommException('已绑定教师信息');
        }
        const newTeacher = this.teacherInfoEntity.create({
            userID: id,
            teacherName,
            collegeID,
            teacherTitle,
        });

        await this.teacherInfoEntity.save(newTeacher);
        const classIDList = classIDs.split(',');
        const teacherClassList = classIDList.map(item => {
            return {
                userID: id,
                classID: item,
            };
        });
        await this.teacherClassEntity.save(teacherClassList);
        return newTeacher;
    }

    async getClass() {
        let classInfo = await this.classInfoEntity.find();
        const dict = await this.dictInfoEntity.find();
        return classInfo.map(item => {
            // @ts-ignore
            const {collegeName, gradeName} = item;
            const college = dict.find(item => item.value == collegeName);
            const grade = dict.find(item => item.value == gradeName);
            return {
                ...item,
                grade: grade.name,
                collegeName: college.name,
            };
        });
    }

    async getTeacherClass(id: number) {
        const teacherClass = await this.teacherClassEntity.find({where: {userID: id}});
        const classInfo = await Promise.all(teacherClass.map(async item => {
            // 查询出每个班有多少名学生
            const studentCount = await this.studentInfoEntity.count({where: {classID: item.classID}});
            return {
                ...item,
                studentCount,
                ...await this.classInfoEntity.findOneBy({id: item.classID})
            }
        }))
        const dict = await this.dictInfoEntity.find();
        return classInfo.map(item => {
            const {collegeName, gradeName} = item;
            const college = dict.find(item => item.value == collegeName);
            const grade = dict.find(item => item.value == gradeName);
            return {
                ...item,
                grade: grade.name,
                collegeName: college.name,
            };
        });
    }

    async publish(body, id: number) {
        const {title, anonymous, endTime, comments} = body
        const teacherInfo = await this.teacherInfoEntity.findOneBy({userID: id})
        return await Promise.all(body.class.map(async item => {
            const commentListInfo = await this.commentListEntity.save({
                teacherID: teacherInfo.id,
                title: title,
                isAnonymous: anonymous,
                endTime: endTime,
                classID: item.id
            })
            for (let item of comments) {
                const tempData = {
                    commentID: commentListInfo.id,
                    content: item.title,
                    type: item.type,
                    options: JSON.stringify(item.options.filter(Boolean))
                }
                await this.commentInfoEntity.save(tempData)
            }
            return commentListInfo
        }))
    }

    async getCommentList(id: number) {
        const teacherInfo = await this.teacherInfoEntity.findOneBy({userID: id})
        const commentList = await this.commentListEntity.findBy({teacherID: teacherInfo.id})
        const commentInfo = await Promise.all(commentList.map(async item => {
            // 查询当前问卷有多少个用户参与了评价
            const commentAnswer = await this.commentAnswerEntity.find({where: {commentID: item.id}})
            // 使用set去重对应的userID
            const userIDList = [...new Set(commentAnswer.map(item => item.userID))]
            item['userCount'] = userIDList.length
            // 根据班级id查询班级信息
            item['classInfo'] = await this.classInfoEntity.findOneBy({id: item.classID})

            return await this.commentInfoEntity.find({where: {commentID: item.id}})
        }))
        return commentList.map(item => {
            // @ts-ignore
            const tempCommentInfo = commentInfo.filter(info => info.commentID == item.id)
            return {
                ...item,
                comments: tempCommentInfo.map(info => {
                    return {
                        ...info,
                        // @ts-ignore
                        options: JSON.parse(info.options)
                    }
                })
            }
        })
    }

    async getCommentDetail(commentID: number) {
        const {isAnonymous} = await this.commentListEntity.findOneBy({id: commentID})
        const commentInfo = await this.commentInfoEntity.find({where: {commentID: commentID}})
        return await Promise.all(commentInfo.map(async item => {
            // 查看每个选项填写的人数
            item['answerCount'] = await this.commentAnswerEntity.find({where: {optionID: item.id, commentID}})
            // 使用answerCount的中的answer为key，统计出每个选项的人数
            item['answerCount'] = item['answerCount'].reduce((prev, cur) => {
                // 如果当前选项类型是客观题，就跳过
                const {answer} = cur
                if (item.type == '3') {
                    prev[answer]=1
                }
                if (prev[answer]) {
                    prev[answer] += 1
                } else {
                    prev[answer] = 1
                }
                return prev
            }, {})

            // 如果不是匿名的话，就把当前回答的人的信息查出来
            if (!isAnonymous) {
                const baseOptions = await this.commentAnswerEntity.find({where: {optionID: item.id, commentID}})
                item['answerList'] = await Promise.all(baseOptions.map(async info => {
                    const {userID} = info
                    const userInfo = await this.userInfoEntity.findOneBy({id: userID})
                    const student = await this.studentInfoEntity.findOneBy({userID})
                    return {
                        ...student,
                        ...info,
                        ...userInfo
                    }
                }))
            }
            return {
                ...item,
                options: JSON.parse(item.options)
            }
        }))
    }
    async deleteComment(commentID: number) {
        await this.commentListEntity.delete({id: commentID})
        await this.commentInfoEntity.delete({commentID})
        await this.commentAnswerEntity.delete({commentID})
        return {
            success: true
        }
    }
}
