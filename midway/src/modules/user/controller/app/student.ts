import {
    CoolController,
    BaseController,
    CoolUrlTag,
} from '@cool-midway/core';
import {Get, Inject, Query} from '@midwayjs/core';
import {StudentService} from "../../service/student";

/**
 * 通用
 */
@CoolUrlTag()
@CoolController()
export class AppStudentController extends BaseController {
    @Inject()
    ctx;

    @Inject()
    studentService: StudentService;

    // 查看当前用户是否绑定了学生信息
    @Get('/checkStudent', {summary: '查看当前用户是否绑定了学生信息'})
    async checkStudent() {
        const {id} = this.ctx.user;
        return this.ok(await this.studentService.getStudentByUserID(id));
    }

    // 绑定学生信息
    @Get('/bindStudent', {summary: '绑定学生信息'})
    async bindStudent(@Query() body) {
        const {id} = this.ctx.user;
        return this.ok(await this.studentService.bindStudent(body, id));
    }

    // 查看当前学生的所在班级的所有问卷
    @Get('/getQuestionnaire', {summary: '查看当前学生的所在班级的所有问卷'})
    async getQuestionnaire() {
        const {id} = this.ctx.user;
        return this.ok(await this.studentService.getQuestionnaire(id));
    }

    // 获取当前学生信息
    @Get('/getStudentInfo', {summary: '获取当前学生信息'})
    async getStudentInfo(@Query() body) {
        const {id} = this.ctx.user;
        return this.ok(await this.studentService.getStudentInfo(id));
    }

    // 获取当前班级的所有学生
    @Get('/getStudentList', {summary: '获取指定班级的所有学生'})
    async getStudentList(@Query() body) {
        const {classID} = body;
        return this.ok(await this.studentService.getStudentList(classID));
    }

    // 获取问卷详情
    @Get('/getQuestionnaireDetail', {summary: '获取问卷详情'})
    async getQuestionnaireDetail(@Query() body) {
        const {questionnaireID} = body;
        return this.ok(await this.studentService.getQuestionnaireDetail(questionnaireID));
    }
    // 提交答案
    @Get('/submitAnswer', {summary: '提交答案'})
    async submitAnswer(@Query() body) {
        const {id} = this.ctx.user;
        return this.ok(await this.studentService.submitAnswer(body,id));
    }
}


