/*
 * @Author: 潮汐
 * @Date: 2020-02-11 23:30:42
 * @LastEditors: 朱俊
 * @LastEditTime: 2020-02-29 20:49:27
 * @Description: 
 */
import Vue from 'vue' //实列对象
import App from './App.vue' //根组件
import router from './router' //路由模块
import axios from "axios" //引入ajax请求axios模块
import Vant from 'vant' //导入所有组件才用此方法
import 'vant/lib/index.css' //导入所有组件才用此方法
Vue.use(Vant) //引入vant对象注册实列 
import qs from 'qs' //引入qs
Vue.prototype.qs = qs //全局加载,必须应用


Vue.config.productionTip = false //取消生产模式提示
axios.defaults.baseURL = "http://192.168.1.100:5050" //默认请求服务器基础路径
//发送请求时将session信息发送服务器
axios.defaults.withCredentials = true
//将axios注册Vue对象属性
Vue.prototype.axios = axios

new Vue({
  router,
  render: h => h(App)
}).$mount('#app')