import { BaseEntity } from '@cool-midway/core';
import { Column, Entity } from 'typeorm';

/**
 * 评价选项
 */
@Entity('comment_options')
export class CommentOptionsEntity extends BaseEntity {
  @Column({ comment: '所属评价', nullable: true, type: 'varchar' })
  commentInfoID: string;

  @Column({ comment: '选项内容', nullable: true, type: 'varchar' })
  content: string;
}
