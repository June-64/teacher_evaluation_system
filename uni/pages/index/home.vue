<template>
  <cl-page status-bar-background="transparent">
    <view>
      <view>
        我是老师
      </view>
      <view>
        我是学生
      </view>
    </view>
    <tabbar/>
  </cl-page>
</template>

<script lang="ts" setup>
import {useApp, useCool} from "/@/cool";
import {useUi} from "/@/ui";
import Tabbar from "./components/tabbar.vue";

const {router, service} = useCool();
const ui = useUi();
const app = useApp();

</script>

<style lang="scss" scoped>

</style>
