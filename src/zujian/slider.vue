<!--
 * @Author: 潮汐
 * @Date: 2020-02-21 22:29:45
 * @LastEditors: 朱俊
 * @LastEditTime: 2020-03-01 23:45:55
 * @Description: 滑块，切换页面，上下滑动
 -->
<template>
  <div class="foot">
    <!-- 悬浮的HTML -->
    <div id="footz">
      <!-- 滑块 -->
      <div
        class="xuanfu"
        id="moveDiv"
        @mousedown="down"
        @touchstart="down"
        @mousemove="move"
        @touchmove.prevent="move"
        @mouseup="end"
        @touchend="end"
      >
        <a @click="xiaoxio()">
          <img :src="nnam==1?'zj-xi1.png':'zj-xi0.png'" />
          <!-- <span>消息</span> -->
        </a>
        <a @click="lianxiren()">
          <img :src="nnam==2?'zj-lxr1.png':'zj-lxr0.png'" />
          <!-- <span>联系人</span> -->
        </a>
        <a @click="tongtai()">
          <img :src="nnam==3?'zj-sc1.png':'zj-sc0.png'" />
          <!-- <span>动态</span> -->
        </a>
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
    return {
      position: {
        y: 0
      },
      ny: "",
      dy: "",
      yPum: "",
      xiaoxio1: "1",
      lianxiren2: "2",
      tongtai3: "3",
      nnam: "1"
    };
  },
  methods: {
    // 实现移动端拖拽
    down() {
      this.flags = true;
      var touch;
      if (event.touches) {
        touch = event.touches[0];
      } else {
        touch = event;
      }
      this.position.y = touch.clientY;
      this.dy = moveDiv.offsetTop;
    },
    // 鼠标移动时
    move() {
      if (this.flags) {
        var touch;
        if (event.touches) {
          touch = event.touches[0];
        } else {
          touch = event;
        }
        this.ny = touch.clientY - this.position.y;
        this.yPum = this.dy + this.ny;
        const maxHeight = document.getElementById("footz").clientHeight - 100; //减去滑块一半的高度

        if (this.yPum < 0) {
          //屏幕y限制
          this.yPum = 0;
        } else if (this.yPum > maxHeight) {
          this.yPum = maxHeight;
        }
        moveDiv.style.top = this.yPum + "px";
      }
    },
    //鼠标释放时候的函数
    end() {
      this.flags = false;
    },
    //点击传值给父组件，通过$emit传递，第一个参数messageData相当于传播的媒介，this.childrenMessage为需要传递的值，后面也可以传递多个参数
    xiaoxio() {
      this.$emit("messageData", this.xiaoxio1);
      this.nnam = 1;
    },
    lianxiren() {
      this.$emit("messageData", this.lianxiren2);
      this.nnam = 2;
    },
    tongtai() {
      this.$emit("messageData", this.tongtai3);
      this.nnam = 3;
    }
  }
};
</script>

<style>
/* 固定定位 */
.foot {
  position: fixed;
  bottom: 0;
  /* left: 0;
     */
}
/* 父级div */
#footz {
  height: 18.75rem;
  width: 2.5rem;
  position: relative;
  padding-left: 0.5rem;
}
/* 滑块 */
.xuanfu {
  height: 18.75rem;
  width: 2.5rem;
  /* 如果碰到滑动问题，1.3 请检查 z-index。z-index需比web大一级*/
  z-index: 999;
  position: absolute;
  padding-top: 6.25rem;
}
.xuanfu span {
  font-size: 0.1875rem;
  height: 3.125rem;
  font-weight: 200;
  color: #fff;
}
.xuanfu a {
  cursor: pointer;
}
/* icon图标 */
.xuanfu a img {
  width: 1.8rem;
  height: 1.8rem;
  margin-top: 1.4rem;
}
</style> 
