<template>

  <cl-page>

  </cl-page>

</template>

<script setup lang="ts">

import {ref} from "vue";
import {onLoad} from "@dcloudio/uni-app";
import {router, service} from "/@/cool";
import ClPage from "/@/ui/components/cl-page/cl-page.vue";

const studentList = ref<any>([])

const getList = () => {
  service.user.student.getStudentList({classID: router.query.id}).then(res => {
    studentList.value = res
  })
}
onLoad(() => {
  getList()
})

</script>

<style scoped lang="scss">

</style>
