import { BaseEntity } from '@cool-midway/core';
import { Column, Index, Entity } from 'typeorm';

/**
 * 班级信息
 */
@Entity('class_info')
export class ClassInfoEntity extends BaseEntity {
  @Index()
  @Column({ comment: '班级ID', nullable: true, type: 'bigint' })
  classID: number;

  @Column({ comment: '年级名称', nullable: true, type: 'varchar' })
  gradeName: string;

  @Column({ comment: '学院名字', nullable: true, type: 'varchar' })
  collegeName: string;

  @Column({ comment: '专业名称', nullable: true, type: 'text' })
  majorName: string;

  @Column({ comment: '班级人数', nullable: true, type: 'bigint', default: 0 })
  classNum: number;
}
