<template>
  <cl-page :padding="20">
    <cl-text v-if="!isEmpty(commentInfo)" :size="40" bold :value="commentInfo.title">
    </cl-text>
    <view v-if="!isEmpty(commentInfo)" v-for="(item,index) in commentInfo.commentInfoList" :key="index"
          class="options-border">
      <view class="is-flex">
        <text style="padding-right: 10rpx;">{{ index + 1 }}.</text>
        <text>{{ item.content }}</text>
      </view>
      <!--单项选择或判断-->
      <view v-if="item.type==0||item.type==2">
        <view class="is-flex" v-for="(option,i) in item.options" :key="i">
          <cl-radio-group v-model="answers[index]['answer']">
            <cl-radio :label="i">
              <text style="padding-right: 10rpx;" v-if="commentInfo.commentInfoList[index].type==0">{{
                  String.fromCharCode(65 + i)
                }}.
              </text>
              <text>{{ option }}</text>
            </cl-radio>
          </cl-radio-group>
        </view>
      </view>
      <!--多项选择-->
      <view v-if="item.type==1">
        <view class="is-flex" v-for="(option,i) in item.options" :key="i">
          <cl-checkbox-group v-model="answers[index]['answer']">
            <cl-checkbox :label="i">
              <text style="padding-right: 10rpx;">{{ String.fromCharCode(65 + i) }}.</text>
              <text>{{ option }}</text>
            </cl-checkbox>
          </cl-checkbox-group>
        </view>
      </view>
      <view v-if="item.type==3">
        <cl-textarea v-model="answers[index]['answer']" placeholder="请输入答案"/>
      </view>
    </view>
    <view class="is-flex justify-center ym-md">
      <cl-button type="primary" @tap="submit">提交</cl-button>
    </view>
  </cl-page>

</template>

<script setup lang="ts">

import {ref} from "vue";
import {onLoad} from "@dcloudio/uni-app";
import {router, service} from "/@/cool";
import ClButton from "/@/ui/components/cl-button/cl-button.vue";
import {isEmpty} from "lodash-es";
import {useUi} from "/@/ui";

const ui = useUi()

const commentInfo = ref<any>()
const answers = ref<any>([])

const submit = () => {
  // 检查是否填写完整
  function check() {
    let flag = true
    commentInfo.value.commentInfoList.forEach((item, index) => {
      if (Number(item.type) === 1) {
        if (answers.value[index].answer.length === 0) {
          flag = false
        }
      } else {
        if (answers.value[index].answer === "") {
          flag = false
        }
      }
    })
    return flag
  }

  if (!check()) {
    return ui.showToast("请填写完整")
  }
  ui.showLoading("提交中...")
  service.user.student.submitAnswer({
    commentID: commentInfo.value.id,
    answerList: JSON.stringify(answers.value)
  }).then(res => {
    ui.showToast("提交成功")
    router.back()
  }).finally(() => {
    ui.hideLoading()
  })
}

const getList = () => {
  ui.showLoading("加载中...")
  const {commentID} = router.query
  service.user.student.getQuestionnaireDetail({questionnaireID: commentID}).then(res => {
    commentInfo.value = res
    // 根据选项映射出答案字典
    commentInfo.value.commentInfoList.forEach((item, index) => {
      answers.value[index] = {
        optionID: item.id,
        answer: Number(item.type) === 1 ? [] : ""
      }
    })
  }).finally(() => {
    ui.hideLoading()
  })
}

onLoad(() => {
  getList()
})

</script>

<style scoped lang="scss">

</style>
  
