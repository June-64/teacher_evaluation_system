import dev from "./dev";
import prod from "./prod";

// 是否开发模式
export const isDev = import.meta.env.MODE === "development";

// 配置
export const config = {
	// 项目信息
	app: {
		name: "教师评价小程序",
		desc: "基于 Ts + Vue3 + Pinia 构建。",
		// 页面配置
		pages: {
			login: "/pages/user/login",
		},
		// 微信配置
		wx: {
			// 小程序
			mini: {
				appid: "wxf6cea8bfa89323cb",
			},
			// 公众号
			mp: {
				appid: "wxd532456e1e1ef9b9",
				debug: false,
			},
			// App
			app: {
				appid: "",
			},
		},
	},

	// 调试
	test: {
		token: "",
		mock: false,
		eps: true,
	},

	// 忽略
	ignore: {
		token: ["/app/user/login/wxMiniLogin"],
	},

	// 当前环境
	...(isDev ? dev : prod),
};

export * from "./proxy";
