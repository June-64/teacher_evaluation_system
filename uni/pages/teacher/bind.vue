<template>

  <cl-page :padding="20">
    <view class="is-flex item-center ym-md">
      <text class="title xm-xs">教师姓名:</text>
      <cl-input v-model="form.name" class="flex1"/>
    </view>
    <view class="is-flex item-center ym-md">
      <text class="title xm-xs">教师职称:</text>
      <cl-input v-model="form.teacherTitle" class="flex1"/>
    </view>
    <view class="is-flex item-center ym-md">
      <text class="title xm-xs">所属学院:</text>
      <cl-select :defaultFirstOption="false" :options="dict.get('college_info')" v-model="form.collegeID"
                 class="flex1"/>
    </view>
    <view class="is-flex item-center ym-md">
      <text class="title xm-xs">教学班级:</text>
      <view class="flex1 is-border h" @tap="toSelectClass">
        <cl-tag closable @close="delClass(item)" v-for="item in form.class" :key="item.id">
          {{ item.grade + item.collegeName }}
        </cl-tag>
      </view>
    </view>
    <view class="is-flex justify-center">
      <cl-button type="primary" round block @tap="bind">绑定</cl-button>
    </view>
  </cl-page>
</template>

<script lang="ts" setup>

import {reactive} from "vue";
import {router, service, useStore} from "/@/cool";
import {useUi} from "/@/ui";

const {dict} = useStore();
const {cinfo} = useStore();
const ui = useUi()

const form = reactive({
  name: "",
  teacherTitle: "",
  collegeID: "",
  class: cinfo.currentClass,
});

const delClass = (item) => {
  form.class = form.class.filter(i => i.id !== item.id)
  cinfo.currentClass = form.class
}

const bind = () => {
  console.log(form.class.map(item => item.id))
  service.user.teacher.bindTeacher({
    teacherName: form.name,
    collegeID: form.collegeID,
    teacherTitle: form.teacherTitle,
    classIDs: form.class.map(item => item.id).join(",")
  }).then(res => {
    router.push("/pages/teacher/index")
  }).catch(err => {
    ui.showToast(err.message)
  })
}
const toSelectClass = () => {
  router.push("/pages/teacher/select_class");
};

</script>

<style lang="scss">
.h {
  height: 150rpx;
  overflow: auto;
}

.is-border {
  border: 1px solid #ccc;
}
</style>
