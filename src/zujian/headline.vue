<!--
 * @Author: 潮汐
 * @Date: 2020-02-11 23:30:42
 * @LastEditors: 朱俊
 * @LastEditTime: 2020-03-02 23:38:13
 * @Description: 主页顶部栏组件
 -->
<template>
  <div class="headline">
    <div class="leftzi">
      <h3 class>〞_____空城梦 ° ぐ</h3>
      <p>希望相处的时光,能让你忘记疲劳...</p>
    </div>
    <div class="righttu">
      <img @click="gongneng()" src="../../public/toxiang.jpg" />
    </div>
  </div>
</template>
<script>
export default {
  methods: {
    gongneng() {
      this.$router.push({ path: "/gongneng" });
    }
  }
};
</script>
 <style scoped>
.headline {
  height: 4.3rem;
  position: fixed;
  z-index: 5;
  width: 100%;
  /* margin-top:0.4rem;
     */
  /* background: url(../../public/5.jpg) no-repeat top;
     background-size: cover;
     */
}
.leftzi {
  width: 72%;
  padding-left: 3%;
  float: left;
}
.leftzi h3 {
  text-align: left;
  color: #fff;
  height: 0.625rem;
  line-height: 1.875rem;
}
.leftzi p {
  font-size: 0.725rem;
  color: #c7c7c7;
  text-align: left;
  font-weight: 600;
  line-height: 1.25rem;
  height: 0.625rem;
}
.righttu {
  float: right;
  width: 25%;
}
.righttu img {
  width: 2.2rem;
  height: 2.2rem;
  border-radius: 50%;
  float: right;
  margin: 1.3rem 1.2rem 0 0;
}
</style> 