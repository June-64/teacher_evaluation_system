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
import {StudentInfoEntity} from "../entity/student";
import {CommentAnswerEntity} from "../entity/comment_answer";

/**
 * 用户信息
 */
@Provide()
export class StudentService extends BaseService {
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

    @InjectEntityModel(StudentInfoEntity)
    studentInfoEntity: Repository<StudentInfoEntity>;

    @InjectEntityModel(CommentAnswerEntity)
    commentAnswerEntity: Repository<CommentAnswerEntity>;

    @Inject()
    file: CoolFile;

    // 检查当前用户是否已经绑定学生信息
    async getStudentByUserID(id: number) {
        const student = await this.studentInfoEntity.findOneBy({userID: id});
        if (!student) {
            throw new CoolCommException('未绑定学生信息');
        }
        return student;
    }

    // 绑定学生信息
    async bindStudent(body, id: number) {
        const {studentName, studentNo, studentSex, classID} = body;
        const student = await this.studentInfoEntity.findOneBy({userID: id});
        if (student) {
            throw new CoolCommException('已绑定学生信息');
        }
        const newStudent = this.studentInfoEntity.create({
            userID: id,
            studentName,
            studentNo,
            studentSex,
            classID,
        });
        await this.studentInfoEntity.save(newStudent);
        return newStudent;
    }

    // 查看当前学生的所在班级的所有问卷
    async getQuestionnaire(id: number) {
        const student = await this.studentInfoEntity.findOneBy({userID: id});
        if (!student) {
            throw new CoolCommException('未绑定学生信息');
        }
        const {classID} = student;
        const commentList = await this.commentListEntity.findBy({classID});
        if (!commentList) {
            throw new CoolCommException('未找到问卷');
        }
        return await Promise.all(
            commentList.map(async item => {
                // 根据教师ID获取教师信息
                const {teacherID} = item;
                item['teacher'] = await this.teacherInfoEntity.findOneBy({id: teacherID});
                // 查看当前问卷是否已经答过
                item['isAnswer'] = !!await this.commentAnswerEntity.findOneBy({commentID: item.id, userID: id})
                return item;
            })
        )
    }

    // 获取当前学生信息
    async getStudentInfo(id: number) {
        const student = await this.studentInfoEntity.findOneBy({userID: id});
        if (!student) {
            throw new CoolCommException('未绑定学生信息');
        }
        const {classID} = student;
        student['classInfo'] = await this.classInfoEntity.findOneBy({id: classID});
        return student;
    }

    // 获取指定班级的所有学生
    async getStudentList(classID: number) {
        if (!classID) {
            throw new CoolCommException('未指定班级');
        }
        const studentList = await this.studentInfoEntity.findBy({classID});
        return await Promise.all(
            studentList.map(async item => {
                const {userID} = item;
                item['userInfo'] = await this.userInfoEntity.findOneBy({id: userID});
                return item;
            })
        )
    }

    // 获取问卷详情
    async getQuestionnaireDetail(questionnaireID: number) {
        const commentList = await this.commentListEntity.findOneBy({id: questionnaireID});
        if (!commentList) {
            throw new CoolCommException('未找到问卷');
        }
        const {teacherID} = commentList;
        commentList['teacher'] = await this.teacherInfoEntity.findOneBy({id: teacherID});
        const commentInfoList = await this.commentInfoEntity.findBy({commentID: questionnaireID});
        commentList['commentInfoList'] = await Promise.all(
            commentInfoList.map(async item => {
                item['options'] = JSON.parse(item['options'])
                return item;
            })
        );
        return commentList;
    }

    // 提交答案
    async submitAnswer(body, id: number) {
        const {commentID, answerList} = body;
        const newAnswerList = JSON.parse(answerList).map(item => {
            const {optionID, answer} = item;
            return {
                userID: id,
                commentID,
                optionID,
                answer: JSON.stringify(answer),
            }
        })
        return await this.commentAnswerEntity.save(newAnswerList);
    }

}

