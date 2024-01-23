<template>
  <cl-page>
    <view class="ap-xs" style="background:#fff;color: #255ec4;font-size: 30rpx;text-align: end">
      {{
        teacher.teacherName + teacher.teacherTitle
      }},{{ dict.getLabel("college_info", teacher.collegeID) }}
    </view>
    <cl-list>
      <cl-list-item label="我的班级" icon="el-icon-s-order" @tap="router.push('/pages/teacher/class')"/>
      <cl-list-item label="发布评价" icon="el-icon-s-order" @tap="router.push('/pages/teacher/publish')"/>
      <cl-list-item label="评价列表" icon="el-icon-s-order" @tap="router.push('/pages/teacher/list')"/>
    </cl-list>
  </cl-page>
</template>

<script lang="ts" setup>
import {ref} from "vue";
import {router, storage, useStore} from "/@/cool";
import {useUi} from "/@/ui";

const {dict} = useStore()
const ui=useUi()

interface teacherType {
  collegeID: string;
  createTime: string;
  id: number;
  status: number;
  teacherName: string;
  teacherTitle: string;
  updateTime: string;
  userID: string;
}

const teacher = ref<teacherType>(JSON.parse(storage.get("teacher")))

const toDev=()=>{
  ui.showToast("功能开发中")
}

</script>

<style lang="scss">

</style>
