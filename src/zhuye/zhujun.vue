<template>
  <div class="zhujun">
    <!--一 顶部样式 -->
    <div class="navbar">
      <img src="yy-bamc9.png" @click="tiaozhuan()" />
      <span>个人展示</span>
      <img src="sangan.png" />
    </div>

    <!-- <div class="cente">
      <h2>潮汐</h2>
      <img src="bg.jpg" alt="">
    </div>-->
    <!-- 轮播图 -->
    <div class="lbt">
      <van-swipe class="my-swipe" :autoplay="2500" indicator-color="white">
        <van-swipe-item>
          <img src="lbt-1.png" alt />
        </van-swipe-item>
        <van-swipe-item>
          <img src="lbt-2.png" alt />
        </van-swipe-item>
        <van-swipe-item>
          <img src="lbt-3.png" alt />
        </van-swipe-item>
        <van-swipe-item>
          <img src="lbt-4.png" alt />
        </van-swipe-item>
      </van-swipe>
    </div>
    <!-- 格子 -->
    <van-grid :gutter="10">
      <van-grid-item v-for="value in 8" :key="value" :style="randomRgb()" text="文字" />
    </van-grid>
    <div style="width:250px;height:250px;border:1px solid red"></div>

    <!-- 结束 -->
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
      randomRgb() {
      var R = Math.floor(Math.random() * 255);
      var G = Math.floor(Math.random() * 255);
      var B = Math.floor(Math.random() * 255);
      return { background: 'rgb(' + R + ',' + G + ',' + B + ')' };
    },
    tiaozhuan() {
      this.$router.push({
        path: "/gongneng"
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
 .zhujun >>> .van-grid-item__content--center {
   background: randomRgb();
 }



/* 顶部样式 */
.navbar {
  position: fixed;
  top: 0;
  width: 100%;
  display: flex;
  flex-flow: row nowrap;
  justify-content: space-between;
  align-items: center;
  height: 4rem;
  color: #000;
  background-color: #e3e3e3;
}
/* 顶部图片 */
.navbar img {
  width: 1.5625rem;
  padding: 0 1rem;
}
/* 所有内容 */
.cente {
  width: 100%;
  height: calc(100% - 5rem);
  margin-top: 5rem;
}
/* 图片 */
.cente > img {
  width: 80%;
}
/* 轮播图大小 */
.lbt {
  width: 90%;
  margin: 5rem 5% 1rem;
}
/* 轮播图内容图片 */
.lbt img {
  width: calc(100% - 2%);
  padding: 0 1%;
  height: 9.375rem;
  border-radius: 3%;
}
/* 轮播图样式 */
.my-swipe .van-swipe-item {
  color: #fff;
  font-size: 1.25rem;
  text-align: center;
}
</style> 