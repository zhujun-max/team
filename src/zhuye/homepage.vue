<!--
 * @Author: 潮汐
 * @Date: 2020-02-11 23:30:42
 * @LastEditors: 朱俊
 * @LastEditTime: 2020-03-04 03:21:55
 * @Description: 3个主页面，消息，联系人，动态，切换页面组件后期更改
 -->
<template>
  <div class="homepage">
    <img src="../../public/5.jpg" class="tupian">
    <!-- 顶部信息栏 -->
    <headline></headline>
    <!-- 消息页面 -->
    <div :class="shows==1?'show1':'show0'">
      <contenta></contenta>
    </div>
    <!-- 联系人页面 -->
    <div :class="shows==2?'show1':'show0'">
      <contacts></contacts>
    </div>
    <!-- 动态页面 -->
    <div :class="shows==3?'show1':'show0'">
      <dynamic></dynamic>
    </div>
    <!-- 底部导航栏 -->
    <slider @messageData="getData"></slider>
  </div>
</template>

<script>
//这里可以导入其他文件（比如：组件，工具js，第三方插件js，json文件，图片文件等等）
//例如：import 《组件名称》 from '《组件路径》';
import headline from "../zujian/headline.vue"; //顶部人物栏
import contenta from "../zujian/contenta.vue"; //首页组件
import contacts from "../zujian/contacts.vue"; //联系人组件
import slider from "../zujian/slider.vue"; //侧边导航栏滑块
import dynamic from "../zujian/dynamic.vue"; //动态组件
import gongneng from "../yy/gongneng.vue";

export default {
  //import引入的组件需要注入到对象中才能使用

  components: {
    headline: headline, //头部
    contenta: contenta, //首页的内容
    slider: slider, //底部拉伸栏
    contacts: contacts, //联系页面的内容
    dynamic: dynamic, //动态页面的内容
    gongneng: gongneng
  },
  data() {
    //这里存放数据
    return {
      shows: "1"
    };
  },
  //监听属性 类似于data概念
  computed: {},
  //监控data中的数据变化
  watch: {},
  //方法集合
  methods: {
    getData(val) {
      this.shows = val;
    }
  },
  //生命周期 - 创建完成（可以访问当前this实例）
  created() {},
  //生命周期 - 挂载完成（可以访问DOM元素）
  mounted() {},
  beforeCreate() {}, //生命周期 - 创建之前
  beforeMount() {}, //生命周期 - 挂载之前
  beforeUpdate() {}, //生命周期 - 更新之前
  updated() {}, //生命周期 - 更新之后
  beforeDestroy() {}, //生命周期 - 销毁之前
  destroyed() {}, //生命周期 - 销毁完成
  activated() {} //如果页面有keep-alive缓存功能，这个函数会触发
};
</script>

<style scoped> 
/* 背景图 */
 .tupian {
     position: fixed;
     width: 100%;
     height: 100%;
     z-index: -1;
}
 .van-tab {
     height: 2.75rem;
     position: fixed;
     bottom: 0;
     width: 100%;
     z-index: 80;
}
 .show0 {
     display: none;
}
 .show1 {
     display: block;
}
 </style> 