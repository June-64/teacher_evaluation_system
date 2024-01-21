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
        const classInfo = teacherClass.map(async item => {
            return await this.classInfoEntity.find({where: {id: item.classID}});
        });
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

    async publish(body, id: number) {
        const {title, anonymous, endTime, comments} = body
        const commentListInfo = await this.commentListEntity.save({
            teacherID: id,
            title: title,
            isAnonymous: anonymous,
            endTime: endTime,
            classID: body.class.map(item => item.id).join(',')
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
    }

    async getCommentList(id: number) {
        const commentList = await this.commentListEntity.find({where: {teacherID: id}})
        const commentInfo = commentList.map(async item => await this.commentInfoEntity.find({where: {commentID: item.id}}))
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
}
