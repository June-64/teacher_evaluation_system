<template>
  <cl-page :padding="20">
    <view style="text-align: end">
      <cl-icon name="set" size="50rpx" color="primary" @tap="visibleSet=true"/>
    </view>

    <view>
      <view v-for="(item,index) in form.comments" :key="index" class="options-border">
        <cl-icon name="close" size="40rpx" @tap="delComment(index)" class="delComment"/>
        <view class="is-flex">
          <text style="padding-right: 10rpx;">{{ index + 1 }}.</text>
          <text>{{ item.title }}</text>
        </view>
        <!--单项选择或判断-->
        <view v-if="item.type==0||item.type==2">
          <view class="is-flex" v-for="(option,i) in item.options" :key="i">
            <cl-radio-group v-model="form.comments[index].active">
              <cl-radio :label="i">
                <text style="padding-right: 10rpx;" v-if="form.comments[index].type==0">{{
                    String.fromCharCode(65 + i)
                  }}.
                </text>
                <text>{{ option }}</text>
              </cl-radio>
            </cl-radio-group>
          </view>
        </view>
        <!--多项选择-->
        <view v-if="item.type==1">
          <view class="is-flex" v-for="(option,i) in item.options" :key="i">
            <cl-checkbox-group v-model="form.comments[index].active">
              <cl-checkbox :label="i">
                <text style="padding-right: 10rpx;">{{ String.fromCharCode(65 + i) }}.</text>
                <text>{{ option }}</text>
              </cl-checkbox>
            </cl-checkbox-group>
          </view>
        </view>
        <view v-if="item.type==3">
          <cl-textarea v-model="item.answer" placeholder="请输入答案"/>
        </view>

      </view>
    </view>

    <view v-if="!curEdit">
      <cl-radio-group @change="changeOption" v-model="curInputForm.type" class="is-flex flex-wrap">
        <cl-radio v-for="item in commentOptions" :key="item.value" :label="item.value">
          {{ item.label }}
        </cl-radio>
      </cl-radio-group>
      <!--单项选择-->
      <view>
        <cl-input v-model="curInputForm.title" placeholder="请输入标题"/>
        <!--选项-->
        <view v-if="curInputForm.type<2">
          <view class="ym-xs is-flex" v-for="(item,index) in curInputForm.options" :key="index">
            <text style="padding-right: 10rpx;">{{ String.fromCharCode(65 + index) }}.</text>
            <cl-input v-model="curInputForm.options[index]" placeholder="请输入选项"/>
            <view class="minus"><i @tap="delOption(index)">-</i></view>
          </view>
        </view>
      </view>
      <view class="is-flex justify-end">
        <view @tap="curInputForm.options.push('')" v-if="curInputForm.type<2">
          <text class="add-option">添加选项</text>
        </view>
        <cl-button type="primary" size="small" block @tap="addComment">完成</cl-button>
      </view>
    </view>


    <view class="ym-md is-flex justify-center flex-column item-center" v-if="curEdit">
      <cl-icon name="plus" size="60rpx" color="#409eff" @tap="curEdit=false"/>
      <text class="add-btn">添加问题</text>
    </view>

    <!--设置发布弹窗-->
    <cl-popup v-model="visibleSet" direction="bottom">
      <cl-list>
        <cl-list-item label="标题">
          <template #append>
            <cl-input v-model="form.title"/>
          </template>
        </cl-list-item>
        <!--        <cl-list-item :arrowIcon='false' label="是否匿名">-->
        <!--          <template #append>-->
        <!--            <cl-switch v-model="form.anonymous" class="switch"/>-->
        <!--          </template>-->
        <!--        </cl-list-item>-->
        <!--结束时间-->
        <cl-list-item :arrow-icon="false" label="截至时间">
          <picker mode="date" :value="form.endTime" :start="startDate" @change="bindDateChange">
            <view class="uni-input">{{ form.endTime }}</view>
          </picker>
        </cl-list-item>
        <cl-list-item label="选择班级">
          <view class="flex1 is-border1 h" @tap="toClass">
            <cl-tag closable @close="delClass(item)" v-for="item in form.class" :key="item.id">
              {{ item.grade + item.collegeName }}
            </cl-tag>
          </view>
        </cl-list-item>
      </cl-list>
      <!--发布按钮-->
      <view class="is-flex justify-center">
        <cl-button type="primary" round block @tap="onPublish">发布</cl-button>
      </view>
    </cl-popup>
  </cl-page>
</template>

<script lang="ts" setup>
import {computed, ref} from "vue";
import {router, service, useStore} from "/@/cool";
import {onLoad} from "@dcloudio/uni-app";
import {useUi} from "/@/ui";
import ClTextarea from "/@/ui/components/cl-textarea/cl-textarea.vue";
import ClRadioGroup from "/@/ui/components/cl-radio-group/cl-radio-group.vue";
import ClRadio from "/@/ui/components/cl-radio/cl-radio.vue";
import ClCheckboxGroup from "/@/ui/components/cl-checkbox-group/cl-checkbox-group.vue";
import ClCheckbox from "/@/ui/components/cl-checkbox/cl-checkbox.vue";
import ClIcon from "/@/ui/components/cl-icon/cl-icon.vue";
import ClListItem from "/@/ui/components/cl-list-item/cl-list-item.vue";

const {dict, cinfo} = useStore()
const ui = useUi()

const curEdit = ref(false)

const curInputForm = ref({
  title: "",
  options: ["", ""],
  type: 0,
  active: 0 as any
})

const commentOptions = [
  {
    label: "单选",
    value: 0
  },
  {
    label: "多选",
    value: 1
  },
  {
    label: "判断",
    value: 2
  },
  {
    label: "客观",
    value: 3
  },
]
const visibleSet = ref(false)

const form = ref({
  collegeID: "",
  anonymous: true,
  title: "",
  class: cinfo.currentClass,
  comments: [] as any[],
  endTime: "2024-01-18",
})

const startDate = computed(() => {
  const date = new Date()
  const year = date.getFullYear()
  const month = date.getMonth() + 1
  const day = date.getDate()
  return `${year}-${month}-${day}`
})

const delComment = (index: number) => {
  form.value.comments.splice(index, 1)
}

const addComment = () => {
  if (curInputForm.value.title == "") {
    ui.showToast("请输入标题")
    return
  }
  if (curInputForm.value.type < 2) {
    for (let i = 0; i < curInputForm.value.options.length; i++) {
      if (curInputForm.value.options[i] == "") {
        ui.showToast("请输入选项")
        return
      }
    }
  }
  const data = {
    ...curInputForm.value,
    options: curInputForm.value.type == 2 ? ['×', '√'] : curInputForm.value.options,
    active: curInputForm.value.type == 1 ? [] : -1
  }
  form.value.comments.push(data)
  curInputForm.value = {
    title: "",
    options: ["", ""],
    type: 0,
    active: 0
  }
  curEdit.value = true
}
const delClass = (item) => {
  form.value.class = form.value.class.filter(i => i.id !== item.id)
  cinfo.currentClass = form.value.class
}
const onPublish = () => {

  if (form.value.comments.length == 0) {
    ui.showToast("请添加问题")
    return
  }
  if (form.value.title == "") {
    ui.showToast("请输入标题")
    return
  }

  if (form.value.endTime == "") {
    ui.showToast("请选择截至时间")
    return
  }
  if (form.value.class.length == 0) {
    ui.showToast("请选择班级")
    return
  }
  // 截至时间必须大于今天
  if (new Date(form.value.endTime).getTime() < new Date().getTime()) {
    ui.showToast("截至时间必须大于当前时间")
    return
  }
  service.user.teacher.publish(form.value).then(res => {
    ui.showToast("发布成功")
    router.back()
  }).catch(err => {
    ui.showToast(err.message)
  })

}

// 更改选项
const changeOption = () => {
  // 清空选项
  curInputForm.value.options = ["", ""]
  curInputForm.value.title = ""
}
// 删除选项
const delOption = (index: number) => {
  // 保留两个选项
  if (curInputForm.value.options.length <= 2) {
    ui.showToast("至少保留两个选项")
    return
  }
  curInputForm.value.options.splice(index, 1)
}
const bindDateChange = ({detail}) => {
  form.value.endTime = detail.value
}

const toClass = () => {
  router.push({
    path: "/pages/teacher/select_class",
    query: {
      type: "all"
    }
  })
}

</script>

<style lang="scss">
.add-btn {
  font-size: 20rpx;
  color: #409eff;
  margin-top: 10rpx;
}

.switch {
  transform: scale(0.8);
}

.add-option {
  font-size: 20rpx;
  color: $cl-color-primary;
  margin-top: 10rpx;
  margin-right: 10rpx;
}

.minus {
  border: 1px solid #ccc;
  color: #ccc;
  line-height: 40rpx;
  text-align: center;
  border-radius: 50%;
  height: 40rpx;
  width: 40rpx;
  margin: 10rpx;
}

.options-border {
  margin: 6rpx;
  padding: 6rpx;
  //虚线边框
  border: $cl-color-primary 1rpx dashed;
  border-radius: 10rpx;
  position: relative;
}

.delComment {
  position: absolute;
  bottom: 0;
  right: 0;
}

.h {
  height: 150rpx;
  overflow: auto;
}

.is-border1 {
  border: 1px solid #ccc;
}
</style>
