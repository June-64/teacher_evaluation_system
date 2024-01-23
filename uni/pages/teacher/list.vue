<template>
  <cl-page>
    <view>
      <cl-list>
        <cl-list-item v-for="item in commentList" :arrow-icon="false" @tap="toCommentDetails(item)">
          <template #default>
            <view class="is-flex flex-column justify-start w100">
              <cl-text :value="item.title"></cl-text>
              <cl-text
                  :value="dict.getLabel('grade_info',item.classInfo.gradeName)+dict.getLabel('college_info',item.classInfo.collegeName)+item.classInfo.majorName"></cl-text>
            </view>
          </template>
          <template #append>
            <view>完成:{{ item.userCount }}</view>
            <view v-if="isExpired(item.endTime)" class="expired">已截止</view>
            <view v-else class="time">{{ item.endTime }}</view>
          </template>
        </cl-list-item>
      </cl-list>
      <cl-divider background-color="#f6f7fa">没有更多了</cl-divider>
    </view>
  </cl-page>
</template>

<script setup lang="ts">
import {router, service, useStore} from "/@/cool";
import {onLoad} from "@dcloudio/uni-app";
import {computed, ref} from "vue";
import ClDivider from "/@/ui/components/cl-divider/cl-divider.vue";

const {dict} = useStore()

const commentList = ref<any>([])

const isExpired = computed(() => {
  return function (endTime: string) {
    return new Date(endTime).getTime() < new Date().getTime()
  }
})

const toCommentDetails = (item) => {
  router.push({
    path: "/pages/teacher/details",
    query: {
      commentID: item.id
    }
  })

}
const getList = () => {
  service.user.teacher.getCommentList().then(res => {
    commentList.value = res
  })
}

onLoad(() => {
  getList()
})

</script>

<style scoped lang="scss">

</style>
