import { BaseEntity } from '@cool-midway/core';
import { Column, Index, Entity } from 'typeorm';

/**
 * 教师信息
 */
@Entity('teacher_info')
export class TeacherInfoEntity extends BaseEntity {
  @Index()
  @Column({ comment: '教师ID', nullable: true, type: 'bigint' })
  teacherID: number;

  @Column({ comment: '教师姓名', nullable: true, type: 'text' })
  teacherName: string;

  @Column({ comment: '学院ID', nullable: true, type: 'bigint' })
  collegeID: number;

  @Column({
    comment: '审核状态 0-待审核 1-审核通过',
    nullable: true,
    type: 'tinyint',
  })
  status: string;

  @Column({ comment: '教师职称', nullable: true, type: 'text' })
  teacherTitle: string;
}
