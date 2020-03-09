<!--
 * @Author: 潮汐
 * @Date: 2020-02-20 17:08:01
 * @LastEditors: 朱俊
 * @LastEditTime: 2020-03-02 02:50:11
 * @Description: 聊天室
 -->
<template>
  <div class="chatroom">
    <!--一 顶部样式 -->
    <div class="navbar">
      <img src="yy-bamc9.png" @click="tiaozhuan()" />
      <span>《潮汐》</span>
      <img src="sangan.png" />
    </div>

    <!--二 撑高度的div -->
    <!-- <div style="height:4rem;"></div>
    <div style="height:40rem;"></div>-->
    <img src="skin_chat_background.png" class="beijt" />

    <!--三 底部按钮 -->
    <div class="bottom">
      <div class="fasong">
        <input type="text" placeholder="不想说点什么吗？" οnfοcus="this.style.color='#000'" />
        <button>发送</button>
      </div>
      <div class="lttupian">
        <img src="zj-lts1.png" />
        <img src="zj-lts2.png" />
        <img src="zj-lts3.png" />
        <img src="zj-lts4.png" />
        <img src="zj-lts5.png" />
        <img src="zj-lts6.png" />
      </div>
    </div>
  </div>
</template>

<script>
//这里可以导入其他文件（比如：组件，工具js，第三方插件js，json文件，图片文件等等）
//例如：import 《组件名称》 from '《组件路径》';
export default {
  //import引入的组件需要注入到对象中才能使用
  components: {},
  data() {
    //这里存放数据
    return {};
  },
  //监听属性 类似于data概念
  computed: {},
  //监控data中的数据变化
  watch: {},
  //方法集合
  methods: {
    tiaozhuan() {
      this.$router.push({
        path: "/"
      });
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
/* @import url();
 引入公共css类 */
/* 顶部样式 */
.navbar {
  position: fixed;
  width: 100%;
  display: flex;
  flex-flow: row nowrap;
  justify-content: space-between;
  align-items: center;
  height: 4rem;
  color: #fff;
}
/* 顶部图片 */
.navbar img {
  width: 1.5625rem;
  margin: 0 1.25rem;
}
/* 背景图 */
.beijt {
  width: 100%;
  min-height: 100%;
  position: fixed;
  z-index: -1;
}
/* 底部内容所有 */
.bottom {
  position: fixed;
  bottom: 0;
  width: 100%;
}
.fasong input {
  width: 75%;
  height: 1.5625rem;
  border: 0;
  caret-color: aqua;
  background: transparent;
  font-size: 1rem;
  color: #fff;
  padding-left: 0.625rem;
}
/* 发送按钮 */
.fasong button {
  width: 16%;
  height: 1.5625rem;
  border: 0;
  border-radius: 22.3125rem;
  color: #fff;
  background-color: aqua;
  font-size: 0.625rem;
}
/* 底部图片div */
.lttupian {
  flex-flow: row nowrap;
  justify-content: space-around;
  align-items: center;
  display: flex;
  width: 100%;
  height: 2.125rem;
}
/* 底部所有图片 */
.lttupian img {
  width: 1.6875rem;
  height: 1.6875rem;
}
</style> 