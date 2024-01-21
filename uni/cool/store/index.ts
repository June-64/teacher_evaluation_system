import { useUserStore } from "./user";
import { useDictStore } from "./dict";
import {useClassInfo} from "./class";

export function useStore() {
	return {
		user: useUserStore(),
		dict: useDictStore(),
		cinfo: useClassInfo(),
	};
}
