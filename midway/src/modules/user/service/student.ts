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
    const commentList= await this.commentListEntity.find({where: {classID}});
    if (!commentList) {
        throw new CoolCommException('未找到问卷');
    }
    return commentList.map
  }

  async getStudentInfo(id: number) {
    const student = await this.studentInfoEntity.findOneBy({userID: id});
    if (!student) {
      throw new CoolCommException('未绑定学生信息');
    }
    const {classID} = student;
    student['classInfo'] = await this.classInfoEntity.findOneBy({id: classID});
    return student;
  }
}
