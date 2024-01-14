import { CoolController, BaseController } from '@cool-midway/core';
import { ClassInfoEntity } from "../../entity/class";

/**
 * 用户信息
 */
@CoolController({
  api: ['add', 'delete', 'update', 'info', 'list', 'page'],
  entity: ClassInfoEntity,
  pageQueryOp: {
    // fieldEq: ['status', 'gender', 'loginType'],
    keyWordLikeFields: ['className', 'majorName'],
  },
})
export class AdminClassInfoController extends BaseController {}
