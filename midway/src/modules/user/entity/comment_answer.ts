import {BaseEntity} from '@cool-midway/core';
import {Column, Entity} from 'typeorm';

/**
 * 评价信息
 */
@Entity('comment_answer')
export class CommentAnswerEntity extends BaseEntity {
    @Column({comment: '所属用户', nullable: true, type: 'bigint'})
    userID: number;

    @Column({comment: '所属评价', nullable: true, type: 'bigint'})
    commentID: number;

    @Column({comment: '所诉选项', nullable: true, type: 'bigint'})
    optionID: number;

    @Column({comment: '答案', nullable: true, type: 'varchar'})
    answer: string;

}
