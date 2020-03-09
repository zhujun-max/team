<!--
 * @Author: 潮汐
 * @Date: 2020-02-24 15:08
 * @LastEditors: 杨洋
 * @LastEditTime: 2020-03-06 20:53:33
 * @Description: 1个功能页面,详情看assets文件夹图片
 -->
<template>
  <!-- 功能页面 最外层 -->
  <div class="flex-wrap color_fff">
    <!-- 第一层的顶部标题及个人头像 -->
    <div class="header">
      <!-- 顶部标题 -->
      <div class="title">
        <!-- 顶部标题 图片打卡 -->
        <img src="../../public/yy_gn_1.png" class="ver_align" />
        <!-- 顶部标题  文字 -->
        <span class="ver_align">打卡</span>
      </div>
      <!-- 个人头像 -->
      <div class="img_pers">
        <a class="toxaing" @click="toxaing()">
          <img src="../../public/toxiang.jpg" />
        </a>
      </div>
    </div>

    <!-- 中间层 滑动层 第二层div 功能列表 -->
    <div class="all_body">
      <div class="all_list">
        <div class="list_item" @click="onSelect()">
          <img src="../../public/yy_gn_2.png" class="ver_align" />
          <span class="ver_align">这是音乐</span>
        </div>
        <div class="list_item" @click="zhujun()">
          <img src="../../public/yy_gn_3.png" class="ver_align" />
          <span class="ver_align">个人展示</span>
        </div>
        <div class="list_item">
          <img src="../../public/yy_gn_4.png" alt class="ver_align" />
          <span class="ver_align">我的钱包</span>
        </div>
        <div class="list_item" @click="texiao()">
          <img src="../../public/yy_gn_5.png" alt class="ver_align" />
          <span class="ver_align">我的个性装扮</span>
        </div>
        <div class="list_item">
          <img src="../../public/yy_gn_6.png" alt class="ver_align" />
          <span class="ver_align">我的收藏</span>
        </div>
        <div class="list_item">
          <img src="../../public/yy_gn_7.png" alt class="ver_align" />
          <span class="ver_align">我的相册</span>
        </div>
        <div class="list_item">
          <img src="../../public/yy_gn_8.png" alt class="ver_align" />
          <span class="ver_align">我的文件</span>
        </div>
        <div class="list_item" @click="shezhi()">
          <img src="../../public/yy_gn_9.png" alt class="ver_align" />
          <span class="ver_align">设置</span>
        </div>
      </div>
    </div>

    <!-- 第三层 天气预报-->
    <div class="weather_all">
      <span>11°</span>
      <span>重庆江北</span>
    </div>
    <!-- 音乐遮罩层 -->
    <van-action-sheet v-model="show">
      <div class="content">
        <!-- 顶部圆 -->
        <div class="yuan" @click="showis=true">
          <img src="yinyue.png" alt />
        </div>
        <!-- 中间文本栏 -->
        <div class="yy_wz">
          <h5>打卡签到</h5>
          <h5>添加好友</h5>
          <h5>创建群聊</h5>
          <h5>扫二维码</h5>
        </div>
        <!-- 底部栏-->
        <div class="yy_buttom">
          <div :class="showis==false?'yy_yc':'yy_xs'">
            <p>海阔天空</p>
            <img class="zuoimg" src="shangyishou.png" />
            <img class="youimg" src="xiayishou.png" />
          </div>
          <img src="sousuo1.png" />
          <img src="shezhi.png" />
          <img src="shoucang.png" />
          <img src="guanbi.png" />
        </div>
      </div>
    </van-action-sheet>
  </div>
</template>
<script>
export default {
  data() {
    return {
      show: false,
      showis: false,
      actions: [
        { name: "选项" },
        { name: "选项" },
        { name: "选项", subname: "描述信息" }
      ]
    };
  },
  methods: {
    onSelect(item) {
      // 默认情况下点击选项时不会自动收起
      // 可以通过 close-on-click-action 属性开启自动收起
      this.show = true;
      this.showis = false;
    },

    toxaing() {
      this.$router.push({
        path: "/xiangqing"
      });
    },
    shezhi() {
      this.$router.push({
        path: "/"
      });
    },
    texiao() {
      this.$router.push({
        path: "/texiao"
      });
    },
    // zhujun() {
    //   this.$router.push({
    //     path: "/zhujun"
    //   });
    // }
  }
};
</script>
<style scoped>
/* 遮罩层顶部圆 */
.yuan {
  width: 3.75rem;
  height: 3.75rem;
  background: #fff;
  position: absolute;
  top: 0%;
  left: 50%;
  transform: translate(-50%, -30%);
  border-radius: 50% 50%;
  z-index: 300;
}
/* 圆里面的音乐图标 */
.yuan img {
  width: 3.75rem;
  height: 3.75rem;
}
/* 遮罩层底部div */
.yy_buttom {
  width: 100%;
  height: 2.125rem;
  padding-top: 0.875rem;
  border-top: 2px solid #cfcfcfab;
}
/* 音乐弹出框隐藏 */
.yy_yc {
  opacity: 0;
  position: absolute;
  border-radius: 50%;
  transform: translate(-50%, -44%);
  width: 8.75rem;
  height: 8.75rem;
  top: 0;
  left: 50%;
}
/* 音乐弹出框 */
.yy_xs {
  width: 8.75rem;
  height: 8.75rem;
  background: #fff;
  position: absolute;
  top: 0;
  left: 50%;
  border-radius: 50%;
  transform: translate(-50%, -44%);
  box-shadow: 0rem 0rem 0.375rem #8b8b8ba3;
  z-index: 200;
  opacity: 1;
  transition: all 0.6s ease-in-out 0s;
}
/* 海阔天空文字 */
.yy_buttom > div > p {
  font-size: 0.625rem;
  height: 1.25rem;
  line-height: 2.5rem;
}
.zuoimg {
  margin-right: 50%;
  margin-top: 14%;
  width: 1.25rem;
}
.youimg {
  height: 1.25rem;
  width: 1.25rem;
}
/* 遮罩层底部图标 */
.yy_buttom > img {
  width: 1.375rem;
  height: 1.375rem;
  margin: 0 8%;
}
/* 修改组件属性，让遮罩层不溢出隐藏 */
.van-popup {
  overflow-y: visible;
}
/* 弹出层 */
.content {
  padding-top: 1.25rem;
  position: relative;
}
body {
  width: 100%;
  margin: 0;
  padding: 0;
}
img {
  width: 2rem;
}
.color_fff {
  color: #fff;
  text-align: center;
}
/* 最外层背景图片 */
.flex-wrap {
  /* 设置最外层div高度为100% */
  width: 100%;
  height: 100%;
  background: url(../../public/qq_setting_me_bg.png) no-repeat top;
  position: absolute;
  background-attachment: fixed;
  background-size: cover;
}
/* 顶部打卡一栏 */
.header {
  text-align: left;
  width: 100%;
  height: 8.125rem;
  position: absolute;
  top: 0rem;
  z-index: 99;
}
.title {
  /* 内边距上下为1rem,左右为零 */
  margin: 1rem 0 1rem 1.5625rem;
}
.title > img {
  width: 1.875rem;
  height: 1.875rem;
}
/* 顶部打卡一栏,文字距图片距离 */
.title > span {
  margin-left: 0.3125rem;
}
/* 个性头像 */
.toxaing {
  display: block;
}
.img_pers img {
  width: 3.125rem;
  height: 3.125rem;
  border-radius: 50%;
  margin: 0 0 0 1.5625rem;
}
/* 中间内容大div */
.all_body {
  /* padding: 8.75rem 0 4.375rem;
     */
  padding-top: 8.125rem;
  height: calc(100% - 8.125rem);
  position: absolute;
  width: 100%;
}
/* 全部功能列表 */
.all_list {
  overflow-y: scroll;
  height: calc(100% - 5.3125rem);
  width: 100%;
}
/* 设置单个列表 */
.list_item {
  height: 3.6875rem;
  line-height: 4rem;
  text-align: start;
  background: rgba(180, 180, 180, 0.42);
  border-radius: 0.3125rem;
  -webkit-box-shadow: 0rem 0rem 0.5625rem rgba(21, 20, 20, 0.76);
  box-shadow: 0rem 0rem 0.5625rem rgba(21, 20, 20, 0.76);
  margin: 0.5rem 1.25rem 1rem;
}
.ver_align {
  vertical-align: middle;
}
.list_item > span {
  margin-left: 0.625rem;
}
.list_item > img {
  margin-left: 1.25rem;
}
/* 第三层 天气预报 */
.weather_all {
  width: 100%;
  height: 4.375rem;
  position: fixed;
  bottom: 0;
  /* margin-left: 1.5625rem;*/
  text-align: left;
  background-size: cover;
  z-index: 99;
}
.weather_all > span {
  display: block;
  margin-left: 1.5625rem;
}
.weather_all > span:nth-child(1) {
  font-size: 2rem;
}
</style> 