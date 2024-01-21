import {defineStore} from "pinia";
import {ref} from "vue";


const useClassInfo = defineStore("classInfo", function () {
    const currentClass = ref([]);
    return{
        currentClass
    }
})

export {useClassInfo}
