import { BaseEntity } from '@cool-midway/core';
import { Column, Entity } from 'typeorm';

/**
 * 评价列表
 */
@Entity('comment_list')
export class CommentListEntity extends BaseEntity {
  @Column({ comment: '所属用户', nullable: true, type: 'bigint' })
  teacherID: number;

  @Column({ comment: '所属班级', nullable: true, type: 'bigint' })
  classID: number;

  @Column({ comment: '问卷标题', nullable: true, type: 'varchar' })
  title: number;

  @Column({
    comment: '是否匿名',
    nullable: true,
    type: 'boolean',
    default: true,
  })
  isAnonymous: boolean;

  @Column({ comment: '截至时间', nullable: true, type: 'timestamp' })
  endTime: Date;

}
