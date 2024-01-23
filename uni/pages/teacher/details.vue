<template>
  <cl-page :padding="20">
    <view v-for="(item,index) in commentDetails" :key="item.id">
      <view class="is-flex">
        <text style="padding-right: 10rpx;">{{ index + 1 }}.</text>
        <text>{{ item.content }}</text>
      </view>
      <!--单项选择或判断-->
      <view v-if="item.type==0||item.type==2">
        <view class="is-flex " v-for="(option,i) in item.options" :key="i">
          <cl-radio-group disabled>
            <cl-radio :label="i">
              <view class="is-flex justify-between ">
                <view>
                  <text style="padding-right: 10rpx;" v-if="item.type==0">{{
                      String.fromCharCode(65 + i)
                    }}.
                  </text>
                  <text>{{ option }}</text>
                </view>
                <text class="xp-md">{{ item.answerCount[i] || 0 }}人</text>
              </view>
            </cl-radio>
          </cl-radio-group>
        </view>
      </view>
      <!--多项选择-->
      <view v-if="item.type==1">
        <view class="is-flex" v-for="(option,i) in item.options" :key="i">
          <cl-checkbox-group disabled>
            <cl-checkbox :label="i">
              <text style="padding-right: 10rpx;">{{ String.fromCharCode(65 + i) }}.</text>
              <text>{{ option }}</text>
            </cl-checkbox>
          </cl-checkbox-group>
        </view>
        <view  style="font-size: 26rpx" class="is-flex">
          <text class="xp-md" v-for="(op,i) in item.answerCount">
            <text v-for="e in JSON.parse(i)">
              {{ String.fromCharCode(65 + e) }}
            </text>
            .
            {{ op }}人
          </text>
        </view>
      </view>
      <view v-if="item.type==3">
        <cl-button class="am-md" @tap="showDetails(item.answerCount)">查看详细</cl-button>
      </view>
    </view>
    <cl-popup v-model="showPopup" size="600rpx">
      <cl-scroller :refresher-enabled="false">
        <view  v-for="(item,index) in popupInfo" :key="index">
          <view>{{ item }}</view>
          <view class="divider"></view>
        </view>
      </cl-scroller>
    </cl-popup>
  </cl-page>
</template>

<script setup lang="ts">

import {router, service} from "/@/cool";
import {onLoad} from "@dcloudio/uni-app";
import ClPage from "/@/ui/components/cl-page/cl-page.vue";
import {ref} from "vue";
import ClEmpty from "/@/ui/components/cl-empty/cl-empty.vue";
import {useUi} from "/@/ui";

const showPopup = ref(false)
const commentDetails = ref<any>([])
const popupInfo = ref<any>([])

const ui=useUi()
const getList = () => {
  const {commentID} = router.query
  service.user.teacher.getCommentDetail({commentID}).then(res => {
    commentDetails.value = res
  })
}
const showDetails = (msg) => {
  popupInfo.value = Object.keys(msg).map(item => item.replace(/^['"]|['"]$/g, ''))
  if (popupInfo.value.length === 0) {
    return ui.showToast("当前评价没有人回答")
  }
  showPopup.value = true
}

onLoad(() => {
  getList()
})
</script>

<style scoped lang="scss">
.divider {
  width: 600rpx;
  height: 1rpx;
  background-color: #ccc;
}
</style>
