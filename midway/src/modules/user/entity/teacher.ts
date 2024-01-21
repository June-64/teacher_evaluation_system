import { BaseEntity } from '@cool-midway/core';
import { Column, Entity } from 'typeorm';

/**
 * 教师信息
 */
@Entity('teacher_info')
export class TeacherInfoEntity extends BaseEntity {
  @Column({
    comment: '教师ID',
    nullable: true,
    type: 'bigint',
    unique: true,
    generated: 'increment',
  })
  id: number;

  @Column({ comment: '用户ID', nullable: true, type: 'bigint', unique: true })
  userID: number;

  @Column({ comment: '教师姓名', nullable: true, type: 'text' })
  teacherName: string;

  @Column({ comment: '学院', nullable: true, type: 'varchar' })
  collegeID: string;

  @Column({ comment: '教师职称', nullable: true, type: 'text' })
  teacherTitle: string;

  @Column({
    comment: '审核状态 0-待审核 1-审核通过',
    nullable: true,
    type: 'tinyint',
    default: 0,
  })
  status: string;
}
