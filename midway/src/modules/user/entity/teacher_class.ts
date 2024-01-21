import { BaseEntity } from '@cool-midway/core';
import { Column, Entity } from 'typeorm';

/**
 * 教师与班级的绑定
 */
@Entity('teacher_class')
export class TeacherClassEntity extends BaseEntity {
  // 用户id
  @Column({ comment: '用户id', nullable: true, type: 'bigint' })
  userID: number;
  @Column({ comment: '班级id', nullable: true, type: 'bigint' })
  classID: number;
}
