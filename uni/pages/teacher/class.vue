<template>
  <cl-page>
    <cl-list>
      <cl-list-item v-for="item in classList" :key="item.id"
                    :label="`${item.grade} ${item.collegeName} ${item.majorName}`"
                    :arrow-icon="false"
                    @tap="toClassDetails(item)"
      >
        <template #append>
          <view>人数:{{ item.studentCount }}</view>
        </template>
      </cl-list-item>
    </cl-list>
  </cl-page>
</template>

<script setup lang="ts">

import {onLoad} from "@dcloudio/uni-app";
import {router, service} from "/@/cool";
import {ref} from "vue";

const classList = ref<any>([])


const toClassDetails = (item) => {
  const {id} = item
  router.push({
    path: "/pages/student/class",
    query: {
      classID:id
    }
  })
}

const getList = () => {
  service.user.teacher.getTeacherClass().then(res => {
    classList.value = res
  })
}
onLoad(() => {
  getList()
})

</script>

<style scoped lang="scss">

</style>
