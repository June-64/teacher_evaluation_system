import { Controller, Get, Inject } from '@midwayjs/decorator';
import { Context } from '@midwayjs/koa';

/**
 * 欢迎界面
 */
@Controller('/')
export class WelcomeController {
  @Inject()
  ctx: Context;

  @Get('/', { summary: '欢迎界面' })
  public async welcome() {
    await this.ctx.render('welcome', {
      text: 'HELLO COOL-ADMIN v7.0 一个项目用COOL就够了！！！',
    });
  }
}
