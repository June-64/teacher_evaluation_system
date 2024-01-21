import {BaseEntity} from '@cool-midway/core';
import {Column, Entity} from 'typeorm';

/**
 * 学生信息
 */
@Entity('student_info')
export class StudentInfoEntity extends BaseEntity {
  @Column({comment: '所属用户', nullable: true, type: 'bigint'})
  userID: number;
  @Column({comment: '学生姓名', nullable: true, type: 'varchar'})
  studentName: string;
  @Column({comment: '学生学号', nullable: true, type: 'varchar'})
  studentNo: string;
  @Column({comment: '学生性别', nullable: true, type: 'varchar'})
  studentSex: string;
  @Column({comment: '所在班级', nullable: true})
  classID: number;

}
