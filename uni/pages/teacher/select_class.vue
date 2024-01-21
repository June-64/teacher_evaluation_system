<template>
  <cl-page>
    <cl-tag closable v-for="item in currentClass" :key="item.id" @close="selectClass(item)">{{
        item.grade + item.collegeName + item.majorName
      }}
    </cl-tag>
    <view v-for="item in classInfo" :key="item.id">
      <cl-list>
        <cl-list-item :label="item.grade+item.collegeName+item.majorName" @tap="selectClass(item)"/>
      </cl-list>
    </view>
  </cl-page>
</template>

<script lang="ts" setup>
import {onBackPress, onLoad, onShow} from "@dcloudio/uni-app";
import {router, service, useStore} from "/@/cool";
import {ref} from "vue";

const {cinfo} = useStore()

const classInfo = ref()

const currentClass = ref<any>([])

const isSingle = router.query.type === "single"

const selectClass = (classInfo) => {
  // 如果当前班级已经被选中，则取消选中
  if (currentClass.value.includes(classInfo)) {
    currentClass.value = currentClass.value.filter(item => item.id !== classInfo.id)
  } else {
    if (isSingle) {
      currentClass.value = []
    }
    currentClass.value.push(classInfo)
  }
  cinfo.currentClass = currentClass.value
};
onShow(() => {
  currentClass.value = cinfo.currentClass
});
onLoad(() => {
  const query = router.query.type
  if (query === "all") {
    service.user.teacher.getTeacherClass().then(res => {
      classInfo.value = res;
    })
  } else
    service.user.teacher.getClass().then(res => {
      classInfo.value = res;
    })
});


</script>

<style lang="scss">
</style>
