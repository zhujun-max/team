<!--
 * @Author: 潮汐
 * @Date: 2020-02-20 03:44:22
 * @LastEditors: 朱俊
 * @LastEditTime: 2020-03-02 23:20:13
 * @Description: 动态页面，舒婷婷
 -->
 <template>
  <div class="contacts">
    <van-pull-refresh v-model="isLoading" success-text="刷新成功" @refresh="onRefresh">
      <search></search>
      <!-- 这里面写动态页面内容，可以插入组件  -->
      <div class="liebiao">
        <div>
          <span>
            <img src="kongjian.png" />
            <p>好友动态</p>
          </span>
          <img src="iaw.png" />
        </div>

        <div>
          <span>
            <img src="tie.png" />
            <p>运动</p>
          </span>
          <img src="iaw.png" />
        </div>
        <div>
          <span>
            <img src="tif.png" />
            <p>腾讯看点</p>
          </span>
          <img src="iaw.png" />
        </div>
      </div>
    </van-pull-refresh>
  </div>
</template>
 
 
 <script>
//这里可以导入其他文件（比如：组件，工具js，第三方插件js，json文件，图片文件等等）
//例如：import 《组件名称》 from '《组件路径》';

import search from "./search.vue"; //搜索

export default {
  //import引入的组件需要注入到对象中才能使用
  components: {
    search
  },
  data() {
    //这里存放数据
    return {
      isLoading: false
    };
  },
  //监听属性 类似于data概念
  computed: {},
  //监控data中的数据变化
  watch: {},
  //方法集合
  methods: {
    onRefresh() {
      setTimeout(() => {
        this.isLoading = false;
        this.count++;
      }, 1000);
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
 .contacts {
     padding-top: 4.3rem;
     height: calc(100% - 4.3rem);
     position: absolute;
     width: 100%;
}
/* 列表样式 */
 .liebiao > div {
     height: 2.125rem;
    /* overflow-y: scroll;
     */
     margin: 1rem 1rem;
     text-align: center;
}
 .liebiao > div > span > img {
     float: left;
     width: 1.75rem;
     height: 1.75rem;
     margin: 0.1875rem 0.625rem;
}
 .liebiao > div > span > p {
     float: left;
     color: #fff;
     font-size: 0.8125rem;
     margin: 0.5625rem 0;
}
 .liebiao > div > img {
     float: right;
     width: 0.5rem;
     height: 0.75rem;
     margin: 0.6875rem 0.3125rem;
}
/* 给父元素加高度 */
/* .van-pull-refresh {
     height: 43.75rem;
}
 */
 .van-pull-refresh {
     overflow: visible ;
}
 </style> 
