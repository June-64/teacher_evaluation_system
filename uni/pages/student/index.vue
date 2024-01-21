<template>
  <cl-page>
    <view class="ap-xs" style="background:#fff;color: #255ec4;font-size: 30rpx;text-align: end">
      {{
        studentInfo.studentName + "," + studentInfo.studentNo
      }}
    </view>
    <cl-list>
      <cl-list-item label="我的班级" icon="el-icon-s-order" @tap="router.push('/pages/student/class')"/>
      <cl-list-item label="评价列表" icon="el-icon-s-order" @tap="router.push('/pages/student/list')"/>
    </cl-list>
  </cl-page>
</template>

<script lang="ts" setup>
import {ref} from "vue";
import {router, service, storage, useStore} from "/@/cool";
import {useUi} from "/@/ui";
import {onLoad} from "@dcloudio/uni-app";

const {dict} = useStore()
const ui = useUi()


const studentInfo = ref()

const toDev = () => {
  ui.showToast("功能开发中")
}

onLoad(() => {
  service.user.student.getStudentInfo().then(res => {
    studentInfo.value = res
  })
})

</script>

<style lang="scss">

</style>
