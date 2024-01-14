<template>
  <cl-page status-bar-background="transparent">
    <view class="main-container">
      <view class="teacher ">
        我是老师
      </view>
      <view class="student">
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
.main-container {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  height: 100%;
  color: white;
  position: fixed;
  top: 40%;
  left: 50%;
  transform: translate(-50%, -50%);
}

.main-container .teacher, .main-container .student {
  line-height: 200rpx;
  text-align: center;
  border-radius: 20rpx;
  width: 350rpx;
  height: 200rpx;
  margin-bottom: 40rpx;
  transition: transform 0.3s ease; /* 定义过渡效果 */
  cursor: pointer; /* 鼠标悬停时显示手势 */
  font-size: 1.2em;
}

.main-container .teacher {
  background-color: #fd962e;
}

.main-container .student {
  background-color: #6363fd;
  margin-bottom: 0; /* 学生按钮没有底部边距 */
}

/* 伪类添加按下时的缩放效果 */
.main-container .teacher:active, .main-container .student:active {
  transform: scale(0.9); /* 缩小到90%的原尺寸 */
}

</style>
