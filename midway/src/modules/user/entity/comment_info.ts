import { BaseEntity } from '@cool-midway/core';
import { Column, Entity } from 'typeorm';

/**
 * 评价信息
 */
@Entity('comment_info')
export class CommentInfoEntity extends BaseEntity {
  @Column({ comment: '所属评价', nullable: true, type: 'bigint' })
  commentID: number;

  @Column({ comment: '评价内容', nullable: true, type: 'varchar' })
  content: string;

  @Column({
    comment: '评价类型 0-单项选择 1-多项选择 2-判断 3-客观',
    nullable: true,
    type: 'varchar',
  })
  type: string;

  @Column({ comment: '选项', nullable: true, type: 'varchar' })
  options: string;

}
