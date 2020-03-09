<!--
 * @Author: 潮汐
 * @Date: 2020-02-12 01:18:01
 * @LastEditors: 朱俊
 * @LastEditTime: 2020-03-02 00:22:52
 * @Description: 联系人列表，循环生成
 -->
<template>
  <div>
    <div @click="liaotian()" v-for="(value,i) of nemr" :key="i">
      <van-swipe-cell>
        <template slot="left"></template>
        <van-cell :border="false" />

        <div class="card">
          <div class="lefttu">
            <img :src="value.img" />
            <div class="wzh4">{{value.anme}}</div>
            <div class="wzh5">{{value.leave}}</div>
          </div>
          <div class="riqi">
            <p>{{value.data}}</p>
          </div>
        </div>
        <template slot="right">
          <span class="rightwz">置顶</span>
          <span class="rightwz">删除</span>
        </template>
      </van-swipe-cell>
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
    return {
      nemr: [
        {
          img: "chaoxi.jpg",
          anme: "团队名:《潮汐》",
          leave: "不知所起,一往而深!",
          data: "(๑•̀ㅂ•́)و✧"
        },
        {
          img: "timg.jpg",
          anme: "团队成员",
          leave: "朱俊，杨洋，舒婷婷",
          data: "三位成员"
        },
        {
          img: "toxiang.jpg",
          anme: "朱俊",
          leave: "不知所起,一往而深!",
          data: "组长"
        },
        {
          img: "tx_yy.jpg",
          anme: "杨洋",
          leave: "不知所起,一往而深!",
          data: "小姐姐"
        },
        {
          img: "tx_stt.jpg",
          anme: "舒婷婷",
          leave: "Just maintain",
          data: "小姐姐"
        },
        {
          img: "3.jpg",
          anme: "路人甲",
          leave: "本人很懒!",
          data: "上午 10:24"
        },
        {
          img: "3.jpg",
          anme: "路人乙",
          leave: "想少奋斗30年",
          data: "下午 13:45"
        },
        {
          img: "3.jpg",
          anme: "路人丙",
          leave: "想少奋斗30年",
          data: "下午 15:21"
        },
        {
          img: "3.jpg",
          anme: "路人丁",
          leave: "想少奋斗30年",
          data: "下午 13:07"
        }
      ]
    };
  },
  //监听属性 类似于data概念
  computed: {},
  //监控data中的数据变化
  watch: {},
  //方法集合
  methods: {
    liaotian() {
      this.$router.push({
        path: "/chatroom"
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
/* 联系人列表 */
.card {
  height: 3.75rem;
  margin: 0 1.4rem 1rem 1.4rem;
  background-color: rgba(181, 181, 181, 0.42);
  -moz-background-color: rgba(181, 181, 181, 0.42);
  -webkit-background-color: rgba(181, 181, 181, 0.42);
  -ms-background-color: rgba(181, 181, 181, 0.42);
  -webkit-box-shadow: 0rem 0rem 0.5625rem rgba(21, 20, 20, 0.76);
  box-shadow: 0rem 0rem 0.5625rem rgba(21, 20, 20, 0.76);
  border-radius: 0.3125rem;
  color: #fff;
}
/* 卡片左侧区域 */
.lefttu {
  float: left;
  padding: 0.3125rem 0 0.3125rem 0.625rem;
}
/* 卡片头像 */
.lefttu > img {
  width: 3rem;
  height: 3rem;
  border-radius: 50%;
  float: left;
  margin-right: 0.5rem;
}
/* 卡片名字 */
.lefttu > .wzh4 {
  margin: 0.3125rem 0.3125rem !important;
  font-weight: 500;
  height: 1.25rem;
}
/* 卡片小字 */
.lefttu > .wzh5 {
  font-size: 0.75rem;
  margin: 0rem !important;
  text-align: left;
  font-weight: 400;
  width: 12.5rem;
  height: 1.5625rem;
}
.riqi {
  float: right;
  /* width: 30%;
     */
}
.riqi > p {
  font-size: 0.75rem;
  line-height: 1.25rem;
  height: 1.25rem;
  margin: 0;
  margin: 0.625rem 0.625rem 0 0;
  text-align: right;
}
/* 清除侧滑栏的距离 */
.van-cell {
  padding: 0 !important;
}
.van-swipe-cell {
  overflow: visible;
}
.rightwz {
  display: inline-block;
  margin: 1.375rem 1.125rem 0.9375rem 0.3125rem;
  color: #fff;
}
</style> 