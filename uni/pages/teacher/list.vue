<template>
  <cl-page>
    <view>
      <cl-list>
        <cl-list-item v-for="item in commentList" :label="item.title" :arrow-icon="false">
          <template #append                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       >
            <view v-if="isExpired(item.endTime)" class="expired">已截至</view>
            <view v-else class="time">{{item.endTime}}</view>
          </template>
        </cl-list-item>
      </cl-list>
    </view>
  </cl-page>
</template>

<script setup lang="ts">
import {service} from "/@/cool";
import {onLoad} from "@dcloudio/uni-app";
import {computed, ref} from "vue";

const commentList = ref<any>([])

const isExpired=computed(()=>{
  return function (endTime:string) {
    return new Date(endTime).getTime() < new Date().getTime()
  }
})

const getList = () => {
  service.user.teacher.getCommentList().then(res => {
    console.log(res)
    commentList.value = res
  })
}

onLoad(() => {
  getList()
})

</script>

<style scoped lang="scss">

</style>
