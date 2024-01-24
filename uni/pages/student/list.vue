<template>
  <cl-page>
    <cl-list>
      <cl-list-item v-for="item in commentList" :key="item.id" :label="item.title" icon="el-icon-s-order"
                    @tap="toDetails(item)">
        <template #append>
          <view class="is-flex justify-end">
            <cl-tag v-if="item.isAnswer">已完成</cl-tag>
            <view v-else>
              <view v-if="isExpired(item.endTime)" type="danger">已截止</view>
              <view v-else type="success">{{ item.endTime }}截至</view>
            </view>
          </view>
        </template>
      </cl-list-item>
    </cl-list>
    <cl-divider background-color="#f6f7fa">没有更多了</cl-divider>
  </cl-page>
</template>

<script setup lang="ts">
import {computed, ref} from "vue";
import {onLoad, onShow} from "@dcloudio/uni-app";
import {router, service} from "/@/cool";
import {useUi} from "/@/ui";
import ClDivider from "/@/ui/components/cl-divider/cl-divider.vue";

const ui = useUi()

const commentList = ref()


const isExpired = computed(() => {
  return function (endTime: string) {
    return new Date(endTime).getTime() < new Date().getTime()
  }
})
const toDetails = (item) => {
  const {id, endTime, isAnswer} = item
  if (isExpired.value(endTime)) {
    return ui.showToast("当前评价已截止")
  }
  if (isAnswer) {
    return ui.showToast("当前评价已完成")
  }
  router.push({path: "/pages/student/details", query: {commentID: id}})
}
onShow(() => {
  service.user.student.getQuestionnaire().then(res => {
    commentList.value = res
  })
})
</script>

<style scoped lang="scss">

</style>
