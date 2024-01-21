<template>
  这是学生评价列表
</template>

<script setup lang="ts">
import {ref} from "vue";
import {onLoad} from "@dcloudio/uni-app";
import {service} from "/@/cool";

const commentList = ref()

onLoad(() => {
  service.user.student.getQuestionnaire().then(res => {
    commentList.value = res
  })
})
</script>

<style scoped lang="scss">

</style>
