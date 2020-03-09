<template>
  <div class="all display_flex">
    <!-- 第一层详情页图片主体 -->
    <div class="top">
      <!-- 第一层详情页图片 -->
      <div class="top_img">
        <img src="../../public/yy_xq_14.jpg" style="position:relative" />
      </div>
      <!-- 第一层详情页图片 上的其他内容-->
      <!-- ************* -->
      <!-- 箭头 -->
      <img src="../../public/yy-bamc9.png" class="img_fz posi_ab" @click="tiaoz()" />
      <!-- 二维码 -->
      <img src="../../public/yy_xq_1.png" @click="showPopup" class="posi_ab erweima" />
      <!-- 大的二维码 -->
      <van-popup v-model="show">
        <img src="../../public/yy_xq_15.png" class="erweima_a" />
      </van-popup>
      <!-- 文字 设置 -->
      <span class="text_sz posi_ab color_fff">设置</span>
      <!-- 图片上的头像 -->
      <img src="../../public/toxiang.jpg" class="img_width posi_ab" />
      <!-- QQ名及QQ号码及星座 -->
      <span class="text_1 posi_ab color_fff">借东西的阿莉埃蒂</span>
      <span class="text_2 font_color posi_ab">QQ:514883297</span>
      <!-- <span class="text_3 font_color posi_ab">摩羯座</span> -->
      <!-- 点赞图片及点赞数量 -->
      <img src="../../public/yy_xq_2.png" class="img_dianzan posi_ab" />
      <span class="text_dianzan posi_ab">191001</span>
    </div>
    <!-- 第二层中间主体 -->
    <div class="content_item display_flex">
      <!-- 中间主体 1 -->
      <div class="content_item_one cont_item display_flex">
        <span>不知所起 一往而深！</span>
        <img src="../../public/yy_xq_0.png" class="jiantou" />
      </div>
      <!-- 中间主体 2 -->
      <div class="content_item_two cont_item display_flex">
        <div class="two_1 img_tow img_w_1 display_flex">
          <img src="../../public/yy_xq_3.png" alt />
          <img src="../../public/yy_xq_6.png" class="margin_left_25" />
          <img src="../../public/yy_xq_7.png" alt />
          <img src="../../public/yy_xq_8.png" alt />
          <img src="../../public/yy_xq_8.png" alt />
        </div>
        <img src="../../public/yy_xq_0.png" class="jiantou" />
      </div>
      <!-- 中间主体 3 -->
      <div class="content_item_three cont_item display_flex">
        <div class="three_1 img_tow img_w_1 display_flex">
          <img src="../../public/yy_xq_4.png" alt />
          <img src="../../public/yy_xq_10.png" class="margin_left_25" />
          <img src="../../public/yy_xq_9.png" alt />
          <img src="../../public/yy_xq_11.png" alt />
          <img src="../../public/yy_xq_12.png" alt />
          <img src="../../public/yy_xq_13.png" alt />
        </div>
        <img src="../../public/yy_xq_0.png" class="jiantou" />
      </div>
      <!-- 中间主体 4 -->
      <div class="content_item_four cont_item display_flex">
        <div class="four_1 display_flex img_w_1">
          <img src="../../public/yy_xq_5.png" alt />
          <span class="margin_left_25">我的空间</span>
        </div>
        <img src="../../public/yy_xq_0.png" class="jiantou" />
      </div>
      <!-- 中间主体 5 四张图片 -->
      <div class="content_item_five display_flex">
        <img src="../../public/gt1.png" />
        <img src="../../public/gt2.png" />
        <img src="../../public/gt3.png" />
      </div>
    </div>
    <!-- 第三层页脚主体 个性名片 编辑资料 发消息 -->
    <!-- <div class="foot display_flex dwei"> -->
    <div class="bottom_a">
      <button>个性名片</button>
      <button>编辑资料</button>
      <button>发消息</button>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      show: false
    };
  },
  methods: {
    showPopup() {
      this.show = true;
    },
    tiaoz() {
      this.$router.push({
        path: "/homepage"
      });
    }
  }
};
</script> 
 <style scoped>
* {
  margin: 0;
  padding: 0;
  font-size: 0.875rem;
  text-align: center;
}
.all {
  text-align: center;
}
.bottom_a {
  position: fixed;
  bottom: 1%;
  text-align: center;
  width: 100%;
}
.bottom_a button {
  width: 26%;
  height: 2.5rem;
  border: 0;
  margin: 0 0.3125rem;
  border-radius: 0.375rem;
  background-color: rgba(12, 196, 238, 0.603);
  color: #fff;
}
body {
  display: flex;
  flex-direction: column;
}
/* *************** */
/* 公共样式 */
.posi_ab {
  position: absolute;
}
.display_flex {
  display: flex;
}
.font_color {
  color: #000;
}
.color_fff {
  color: #fff;
}
/* 中间层箭头的宽度 */
.jiantou {
  width: 0.45rem;
}
/* 中间层,第二层,第三层图片宽度1.5625rem */
.img_w_1 img {
  width: 1.1rem;
  height: 1rem;
}
/* 分类图标 */
.img_w_1 img:nth-child(1) {
  width: 1.5rem !important;
  height: 1.5rem !important;
}
/* 中间层,第二层,第三层 第二个图片 离左边外边距 */
.margin_left_25 {
  margin-left: 0.8rem;
}
/* 中间层,第二层,第三层 第二到最后的图片 */
.img_tow > img + img {
  margin-right: 0.25rem;
}
.cont_item {
  justify-content: space-between;
  align-items: center;
}
/* 二维码小图标 */
.erweima {
  top: 1.9rem;
  right: 50%;
  width: 1.5rem;
  margin-right: -31%;
}
/* ******************** */
.top_img > img:nth-child(1) {
  width: 100%;
  height: 12rem;
}
/* 返回箭头图标 */
.img_fz {
  top: 1.5rem;
  left: 50%;
  width: 1.5rem;
  margin-left: -45%;
}
.img_erweima {
  top: 1.875rem;
  left: 50%;
  margin-left: 20%;
}
/* 设置文字 */
.text_sz {
  font-size: 1.1rem;
  top: 1.8rem;
  left: 50%;
  margin-left: 35%;
}
.img_width {
  width: 4.0625rem;
  border: 1.5px solid #fff;
  border-radius: 50%;
  top: 6.75rem;
  left: 50%;
  margin-left: -44%;
}
.text_1 {
  font-size: 1.25rem;
  top: 7.75rem;
  left: 50%;
  margin-left: -22%;
}
.text_2 {
  top: 10rem;
  left: 50%;
  margin-left: -22%;
}
.text_3 {
  top: 11.8125rem;
  left: 50%;
  margin-left: -22%;
}
/* 点赞图标 */
.img_dianzan {
  width: 1.6rem;
  top: 7rem;
  left: 50%;
  margin-left: 36%;
}
/* 点赞数量 */
.text_dianzan {
  color: #eee;
  top: 8.6875rem;
  left: 50%;
  margin-left: 34%;
  font-size: 0.6rem;
}
.content_item {
  flex-flow: column nowrap;
}
/* 不知所起位置 */
.content_item_one {
  margin: 1.25rem 1.25rem 0.625rem 3.7rem;
}
/* 不知所起文字 */
.content_item_one > span {
  color: #3b9dff;
}
.content_item_two {
  margin: 0.625rem 1.25rem;
}
/* svip图标 */
.two_1 > img:nth-child(2) {
  width: 1.7rem;
  height: 0.8rem;
}
.two_1 {
  justify-content: flex-start;
  align-items: center;
}
.content_item_three {
  margin: 0.625rem 1.25rem;
}
.three_1 {
  justify-content: flex-start;
  align-content: center;
  align-items: center;
}
.content_item_four {
  margin: 0.625rem 1.25rem;
}
/* 我的空间div */
.four_1 {
  justify-content: flex-start;
  align-content: center;
  align-items: center;
}
.content_item_five {
  justify-content: center;
  align-items: center;
  margin: 0.625rem 1.25rem;
}
.content_item_five img {
  width: 4.0625rem;
  margin-right: 0.125rem;
}
.content_item_five img:nth-child(1) {
  margin-left: 2.5rem;
}
.all {
  flex-flow: column nowrap;
  justify-content: space-between;
}
.foot {
  color: #000;
  display: flex;
  justify-content: center;
}
.foot button {
  width: 6.5rem;
  height: 2.5rem;
  border: 0;
  margin: 0 0.4rem;
  border-radius: 0.375rem;
  background-color: rgba(12, 196, 238, 0.603);
  color: #fff;
}
.van-button ~ button {
  margin-left: 0.625rem;
}
.van-button:last-child {
  background: #0fb0f9;
  color: #fff;
}
.dwei {
  position: absolute;
  left: 15%;
  bottom: 2%;
}
/* 二维码链接图 */
.erweima_a {
  width: 15rem;
  height: 15rem;
}
</style> 