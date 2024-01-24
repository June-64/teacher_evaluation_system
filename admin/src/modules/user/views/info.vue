<template>
	<cl-crud ref="Crud">
		<cl-row>
			<!-- 刷新按钮 -->
			<cl-refresh-btn />
			<!-- 新增按钮 -->
			<cl-add-btn />
			<!-- 删除按钮 -->
			<cl-multi-delete-btn />
			<cl-flex1 />
			<!-- 关键字搜索 -->
			<cl-search-key />
		</cl-row>

		<cl-row>
			<!-- 数据表格 -->
			<cl-table ref="Table" />
		</cl-row>

		<cl-row>
			<cl-flex1 />
			<!-- 分页控件 -->
			<cl-pagination />
		</cl-row>

		<!-- 新增、编辑 -->
		<cl-upsert ref="Upsert" />
	</cl-crud>
</template>

<script lang="ts" name="user-info" setup>
import { useCrud, useTable, useUpsert } from "@cool-vue/crud";
import { useCool } from "/@/cool";

const { service } = useCool();

// cl-upsert
const Upsert = useUpsert({
	items: [
		{ prop: "unionid", label: "登录唯一ID", component: { name: "el-input" } },
		{
			prop: "avatarUrl",
			label: "头像",
			component: { name: "cl-upload", props: { type: "file", limit: 1 } }
		},
		{ prop: "nickName", label: "昵称", component: { name: "el-input" } },
		{ prop: "phone", label: "手机号", component: { name: "el-input" } },
		{ prop: "gender", label: "性别", required: true, component: { name: "el-input" } },
		{ prop: "status", label: "状态", component: { name: "cl-switch" }, required: true },
		{
			prop: "loginType",
			label: "登录方式",
			component: {
				name: "el-radio-group",
				options: [
					{ label: "小程序", value: 0 },
					{ label: "公众号", value: 1, color: "#67C23A" },
					{ label: "H5", value: 2, color: "#E6A23C" }
				]
			},
			value: 0,
			required: true
		}
	]
});

// cl-table
const Table = useTable({
	columns: [
		{ type: "selection" },
		{ prop: "id", label: "ID" },
		{ prop: "avatarUrl", label: "头像", component: { name: "cl-avatar" } },
		{ prop: "nickName", label: "昵称" },
		{ prop: "phone", label: "手机号" },
		{ prop: "gender", label: "性别" },
		{ prop: "status", label: "状态", component: { name: "cl-switch" } },
		{
			prop: "loginType",
			label: "登录方式",
			dict: [
				{ label: "小程序", value: 0 },
				{ label: "公众号", value: 1, color: "#67C23A" },
				{ label: "H5", value: 2, color: "#E6A23C" }
			]
		},
		{ prop: "createTime", label: "创建时间", sortable: "desc", width: 160 },
		{ prop: "updateTime", label: "更新时间", sortable: "custom", width: 160 },
		{ type: "op", buttons: ["edit", "delete"] }
	]
});

// cl-crud
const Crud = useCrud(
	{
		service: service.user.info
	},
	(app) => {
		app.refresh();
	}
);
</script>
