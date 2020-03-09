<!--
 * @Author: your name
 * @Date: 2020-03-03 19:47:56
 * @LastEditTime: 2020-03-09 17:29:32
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \qq-team\qqVue\qq\src\yy\test.vue
 -->
<template>
  <div class="all">
    <!-- col 第一行 搜索栏及右边用户图标-->
    <van-row type="flex" align="center">
      <!-- 第一行第一列 搜索栏 -->
      <van-col span="22" offset="2">
        <van-cell-group>
          <van-field
            v-model="value1"
            autofocus="true"
            clearable
            input-align="center"
            :left-icon="img1"
            placeholder="QQ Music"
          />
        </van-cell-group>
      </van-col>
      <!-- 第一行第二列 用户图标 -->
      <van-col span="2" class="right_img">
        <van-icon :name="img2" />
      </van-col>
    </van-row>
    <!-- 面板 推荐 歌手 排行 搜索 -->
    <van-tabs v-model="activeName" background="transparent">
      <van-tab title="推荐" name="a">
        <!-- 图片懒加载 -->
        <van-swipe :autoplay="3000">
          <van-swipe-item v-for="(image, index) in images" :key="index">
            <img v-lazy="image" />
          </van-swipe-item>
        </van-swipe>
        <van-divider>热门歌单推荐</van-divider>
        <!-- 这个是全部骨架屏 -->
        <div class="skeleton_all">
          <!-- 当网络延迟时 骨架屏占位 -->
          <div v-if="isLoad">
            <van-skeleton
              v-for="item in 3"
              :key="item"
              title
              avatar
              animate="false"
              avatar-size="60px"
              title_img="1"
              :row="1"
            />
          </div>
          <!-- 骨架屏 end -->
          <!-- 真正的卡片开始 -->
          <div v-else class="card">
            <van-row
              type="flex"
              justify="space-around"
              align="center"
              v-for="item in 3"
              :key="item"
            >
              <van-col span="4">
                <img src="../../public/toxiang.jpg" alt class />
              </van-col>
              <van-col span="20" class="card_right">
                <p>Skeleton 骨架屏</p>
                <p>将loading属性设置成false表示内容加载完成</p>
              </van-col>
            </van-row>
          </div>
        </div>
      </van-tab>
      <van-tab title="歌手" name="b">内容 2</van-tab>
      <van-tab title="排行" name="c">内容 3</van-tab>
      <van-tab title="搜索" name="d">内容4</van-tab>
    </van-tabs>
  </div>
</template>
<script>
// "../../public/yy_tx_7.jpg"
export default {
  data() {
    return {
      value1: "",
      activeName: "",
      img1: require("../../public/yy_tx_2.png"),
      img2: require("../../public/yy_tx_3.png"),
      images: [
        require("../../public/yy_tx_4.jpg"),
        require("../../public/yy_tx_5.jpg"),
        require("../../public/yy_tx_6.jpg"),
        require("../../public/yy_tx_7.jpg")
      ],
      isLoad: true
    };
  },
  mounted() {
    // 静态数据，所以用了计时器。正式项目中不用这样做
    setTimeout(
      function() {
        this.isLoad = false;
      }.bind(this),
      3000
    );
  }
};
</script>


 <style scoped>
/* 去掉van自带的上下border */
.all [class*=van-hairline]::after {
    border: none;
}

/* 组件最外层 all */
.all {
    width: 100%;
    height: 100%;
    background: url(../../public/yy_tx_2.jpg) no-repeat;
    background-size: cover;
    background-attachment: fixed;
    background: #333;
}

/* 搜索栏背景图片 */
.all .van-cell-group,
.all .van-cell {
    background-color: transparent;
    /* border: 1px solid red; */
}

/* 搜索栏上下内边距 */
.van-row--align-center {
    padding: 20px;
}

/* 搜索栏里的 清除图标 */
.all .van-icon {
    font-size: 18px;
    color: #e7b613;
}

/* 搜索栏左侧图片 */
.all .van-field__left-icon .van-icon {
    /* border: 1px solid red; */
    font-size: 32px;
}

/* 搜索栏右边图标 */
.all .right_img .van-icon {
    font-size: 28px;
    /* border: 1px solid red; */
    vertical-align: middle;
}

/* 占位符 QQ Music */
.van-field__body input::-webkit-input-placeholder {
    /* font-size: 18px; */
    color: #e7b613;
}

/*标签页未选中 */
.all .van-tab {
    color: #838083;
}

/* 标签页选中 */
.all .van-tab:hover {
    color: #e7b613;
    font-weight: 500;
}

/* 标签页选中的文字
    推荐  歌手  排行  搜索
    横线 */
.all .van-tabs__line {
    width: 40px;
    background-color: #e7b613;
}

/* 轮播图 图片 */
.all .van-swipe__track img {
    width: 100%;
    height: 200px;
    /* border: 1px solid red; */
    margin-top: 10px;
}

/* 热门歌单推荐 横格栏 */
.all .van-divider {
    /* border-style: 10px #e7b613; */
    border-color: #e7b613;
    padding: 9px 0;
    margin: 0;
    color: #e7b613;
    font-size: 18px;
}

/* 卡片 图片 */
.all .van-skeleton__avatar {
    /* border: 1px solid red; */
    border-radius: 0;
}

/* 卡片内边距 */
.all .van-skeleton {
    /* border: 1px solid red; */
    padding: 15px 20px;
}

.card {
    width: 100%;
    box-sizing: border-box;
    /* border: 1px solid red; */
}

.card .van-row {
    width: 100%;
    height: 92px;
    /* border: 1px solid red; */
    box-sizing: border-box;
}

/* 卡片 */
.card p {
    margin: 0;
    padding: 0 10px;
    text-align: left;
}

/* 卡片 中的图片 */
.card img {
    /* border: 1px solid red; */
    width: 60px;
    height: 60px;
    vertical-align: middle;
}

.card .card_right {
    /* border: 1px solid red; */
    box-sizing: border-box;
    margin-left: 10px;
}
</style>
