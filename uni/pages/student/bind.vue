<template>

  <cl-page :padding="20">
    <view class="is-flex item-center ym-md">
      <text class="title xm-xs">姓名:</text>
      <cl-input v-model="form.studentName" class="flex1"/>
    </view>
    <view class="is-flex item-center ym-md">
      <text class="title xm-xs">学号:</text>
      <cl-input v-model="form.studentNo" class="flex1"/>
    </view>
    <view class="is-flex item-center ym-md">
      <text class="title xm-xs">性别:</text>
      <cl-select :defaultFirstOption="false" :options="[{label:'男',value:'男'},{label:'女',value:'女'}]"
                 v-model="form.studentSex"
                 class="flex1"/>
    </view>
    <view class="is-flex item-center ym-md">
      <text class="title xm-xs">所在班级:</text>
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
  studentName: "",
  studentNo: "",
  studentSex: "",
  class: cinfo.currentClass,
});

const delClass = (item) => {
  form.class = form.class.filter(i => i.id !== item.id)
  cinfo.currentClass = form.class
}

const bind = () => {
  console.log(form.class.map(item => item.id))
  const data = {
    ...form,
    classID:form.class[0].id
  }
  service.user.student.bindStudent(data).then(res => {
    ui.showToast("绑定成功")
    router.push("/pages/student/index")
  }).catch(err => {
    ui.showToast(err.message)
  })
}
const toSelectClass = () => {
  router.push({
    path: "/pages/teacher/select_class",
    query: {
      type: "single"
    }
  });
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
