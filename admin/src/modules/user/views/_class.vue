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

<script lang="ts" name="user-_class" setup>
import { useCrud, useTable, useUpsert } from "@cool-vue/crud";
import { useCool } from "/@/cool";
import { useDict } from "/$/dict";

const { service } = useCool();

const { dict } = useDict();

// cl-upsert
const Upsert = useUpsert({
	items: [
		{
			prop: "gradeName",
			label: "年级名称",
			component: {
				name: "el-select",
				options: dict.get("grade_info")
			}
		},
		{
			label: "学院",
			prop: "collegeName",
			component: {
				name: "el-select",
				options: dict.get("college_info")
			}
		},
		{
			prop: "majorName",
			label: "专业名称",
			component: { name: "el-input" }
		}
	]
});

// cl-table
const Table = useTable({
	columns: [
		{ type: "selection" },
		{ prop: "id", label: "ID" },
		{ prop: "gradeName", label: "年级名称" },
		{ prop: "collegeName", label: "学院" },
		{ prop: "majorName", label: "专业名称" },
		{ prop: "classNum", label: "班级人数" },
		{ prop: "createTime", label: "创建时间", sortable: "desc", width: 160 },
		{ prop: "updateTime", label: "更新时间", sortable: "custom", width: 160 },
		{ type: "op", buttons: ["edit", "delete"] }
	]
});

// cl-crud
const Crud = useCrud(
	{
		service: service.user._class
	},
	(app) => {
		app.refresh();
	}
);
</script>
