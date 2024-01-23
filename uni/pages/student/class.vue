<template>
  <cl-page>
    <cl-list>
      <cl-list-item v-for="item in studentList" :key="item.id" :label="item.studentName+item.studentNo"
                    icon="el-icon-s-order">
        <template #icon>
          <cl-avatar :src="item.userInfo.avatarUrl"></cl-avatar>
        </template>
        <template #append>
          <view class="is-flex justify-end">
            <view>{{ item.studentSex }}</view>
          </view>
        </template>
      </cl-list-item>
    </cl-list>
    <cl-divider background-color="#f6f7fa">
      {{ studentList.length }}人
    </cl-divider>
  </cl-page>
</template>

<script setup lang="ts">
import {onLoad} from "@dcloudio/uni-app";
import {router, service} from "/@/cool";
import {ref} from "vue";

const studentList = ref()

onLoad(() => {
  const {classID} = router.query
  console.log(classID)
  service.user.student.getStudentList({classID}).then(res => {
    studentList.value = res
  })
})

</script>

<style scoped lang="scss">

</style>
