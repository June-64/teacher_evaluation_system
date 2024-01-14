import { BaseEntity } from '@cool-midway/core';
import { Column, Index, Entity } from 'typeorm';

/**
 * 课程管理
 */
@Entity('course_management')
export class CourseManagementEntity extends BaseEntity {
  @Index()
  @Column({ comment: '教师ID', nullable: true, type: 'bigint' })
  teacherID: number;

  @Column({ comment: '教师姓名', nullable: true, type: 'text' })
  teacherName: string;

  @Column({ comment: '课程ID', nullable: true, type: 'text' })
  courseID: string;

  @Column({ comment: '课程名称', nullable: true, type: 'text' })
  courseName: string;

  @Column({ comment: '年级ID', nullable: true, type: 'bigint' })
  gradeID: number;

  @Column({ comment: '年级名称', nullable: true, type: 'text' })
  gradeName: string;
}
