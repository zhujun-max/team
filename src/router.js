/*
 * @Author: 潮汐
 * @Date: 2020-02-11 23:30:42
 * @LastEditors: 朱俊
 * @LastEditTime: 2020-03-02 23:34:06
 * @Description: 
 */
import Vue from 'vue'
import VueRouter from 'vue-router'

//朱俊  引入自定义组件
import homepage from "./zhuye/homepage.vue"//首页
import chatroom from "./zhuye/chatroom.vue"//聊天室
import login from "./zhuye/login.vue"//登录的主页
import sigin from "./zhuye/sigin.vue"//注册的主页
// import zhujun from "./zhuye/zhujun.vue"//朱俊的个人页面
//杨洋的页面
import gongneng from "./yy/gongneng.vue";//功能页面
import xiangqing from "./yy/xiangqing.vue";//人物详情页面
// import texiao from "./yy/texiao.vue";

Vue.use(VueRouter)


export default new VueRouter({
  mode: 'history',//取消#号
  routes: [
    //指定路径
    {path:'/',component:login},
    {path:'/homepage',component:homepage},
    {path:'/chatroom',component:chatroom},
    {path:'/sigin',component:sigin},
    {path: "/gongneng",component: gongneng},
    {path: "/xiangqing",component: xiangqing},
    // { path: "/texiao", component: texiao }
    // {path: "/zhujun",component: zhujun}
  ]
})