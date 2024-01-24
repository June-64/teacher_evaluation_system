import {CoolController, BaseController, CoolUrlTag} from '@cool-midway/core';
import {Inject, Post, Query} from '@midwayjs/core';
import {TeacherService} from '../../service/teacher';
import {Body, Get} from '@midwayjs/decorator';

/**
 * 登录
 */
@CoolUrlTag()
@CoolController()
export class AppTeacherController extends BaseController {
  @Inject()
  ctx;

  @Inject()
  teacherService: TeacherService;

  // 检查当前用户是否已经绑定教师信息
  @Post('/checkTeacher', {summary: '检查当前用户是否已经绑定教师信息'})
  async checkTeacher() {
    const {id} = this.ctx.user;
    return this.ok(await this.teacherService.getTeacherByUserID(id));
  }

  // 绑定教师信息
  @Post('/bindTeacher', {summary: '绑定教师信息'})
  async bindTeacher(@Body() body) {
    const {id} = this.ctx.user;
    return this.ok(await this.teacherService.bindTeacher(body, id));
  }

  //获取班级信息
  @Post('/getClass', {summary: '获取班级信息'})
  async getClass(@Body() body) {
    return this.ok(await this.teacherService.getClass());
  }

  @Post('/getTeacherClass', {summary: '获取教师班级信息'})
  async getTeacherClass() {
    const {id} = this.ctx.user;
    return this.ok(await this.teacherService.getTeacherClass(id));
  }

  @Post("/publish", {summary: "发布评价"})
  async publish(@Body() body) {
    const {id} = this.ctx.user;
    return this.ok(await this.teacherService.publish(body, id));
  }

  @Post("/getCommentList", {summary: "获取评价列表"})
  async getCommentList(@Body() body) {
    const {id} = this.ctx.user;
    return this.ok(await this.teacherService.getCommentList(id));
  }

  @Get("/getCommentDetail", {summary: "获取评价详情"})
  async getCommentDetail(@Query() body) {
    const {commentID} = body;
    return this.ok(await this.teacherService.getCommentDetail(commentID));
  }

  // 删除问卷
  @Post("/deleteComment", {summary: "删除评价"})
  async deleteComment(@Body() body) {
    const {commentID} = body;
    return this.ok(await this.teacherService.deleteComment(commentID));
  }
}

