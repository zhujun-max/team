<!--
 * @Author: 潮汐
 * @Date: 2020-02-20 03:12:26
 * @LastEditors: 朱俊
 * @LastEditTime: 2020-03-06 20:48:21
 * @Description: 联系人页面。舒婷婷，
 -->
 <template>
  <div class="contacts">
    <van-pull-refresh v-model="isLoading" success-text="刷新成功" @refresh="onRefresh">
      <search></search>
      <!-- 这里面写联系人页面内容，可以插入组件  -->
      <div class="xpy">
        <span>新朋友</span>
      </div>
      <van-tabs
        background="transparent"
        title-inactive-color="#fff"
        title-active-color="#0AD0FF"
        color="transparent"
        swipeable
        animated
      >
        <van-tab title="好友">
          <div class="haoiyou">
            <div class="sfq">
              <img src="tx_zj.jpg" alt />
              <div class="sfq_top">朱俊</div>
              <div class="sfq_button">[手机在线] 不知所起 一往而深！</div>
            </div>
            <div class="sfq">
              <img src="tx_yy.jpg" alt />
              <div class="sfq_top">杨洋</div>
              <div class="sfq_button">[iPhone] 所谓永恒 只是谎言！</div>
            </div>
            <div class="sfq">
              <img src="tx_stt.jpg" alt />
              <div class="sfq_top">舒婷婷</div>
              <div class="sfq_button">[4G在线] 更新了说说</div>
            </div>
            <div class="sfq">
              <img src="tx_csh.jpg" alt />
              <div class="sfq_top">***</div>
              <div class="sfq_button">[不在线] 账号已注销</div>
            </div>
          </div>
        </van-tab>
        <van-tab title="分组">
          <van-collapse v-model="activeName" border="false" accordion>
            <van-collapse-item title="特别关心" name="1">
              <div class="sfq">
                <img src="1.jpg" alt />
                <div class="sfq_top">一叶孤舟</div>
                <div class="sfq_button">[手机在线] 更新了说说</div>
              </div>
            </van-collapse-item>
            <van-collapse-item title="一个人" name="2">
              <div class="sfq">
                <img src="2.jpg" alt />
                <div class="sfq_top">不厌</div>
                <div class="sfq_button">[手机在线] 更新了说说</div>
              </div>
            </van-collapse-item>
            <van-collapse-item title="一场梦" name="3">
              <div class="sfq">
                <img src="3.jpg" alt />
                <div class="sfq_top">欢寡</div>
                <div class="sfq_button">[手机在线] 更新了说说</div>
              </div>
            </van-collapse-item>
            <van-collapse-item title="一座空城" name="8">
              <div class="sfq">
                <img src="4.jpg" alt />
                <div class="sfq_top">沐风</div>
                <div class="sfq_button">[手机在线] 更新了说说</div>
              </div>
            </van-collapse-item>
            <van-collapse-item title="一生心痛" name="9">
              <div class="sfq">
                <img src="5.jpg" alt />
                <div class="sfq_top">咸鱼</div>
                <div class="sfq_button">[手机在线] 更新了说说</div>
              </div>
            </van-collapse-item>
          </van-collapse>
        </van-tab>
        <van-tab title="群聊">
          <van-collapse v-model="activeName" border="false" accordion>
            <van-collapse-item title="置顶群聊" name="1">
              <div class="sfq">
                <img src="1.jpg" alt />
                <div class="sfq_top">一叶孤舟</div>
                <div class="sfq_button">[手机在线] 更新了说说</div>
              </div>
            </van-collapse-item>
            <van-collapse-item title="未命名的群聊" name="2">
              <div class="sfq">
                <img src="2.jpg" alt />
                <div class="sfq_top">不厌</div>
                <div class="sfq_button">[手机在线] 更新了说说</div>
              </div>
            </van-collapse-item>
            <van-collapse-item title="我创建的群聊" name="3">
              <div class="sfq">
                <img src="3.jpg" alt />
                <div class="sfq_top">欢寡</div>
                <div class="sfq_button">[手机在线] 更新了说说</div>
              </div>
            </van-collapse-item>
            <van-collapse-item title="我管理的群聊" name="8">
              <div class="sfq">
                <img src="4.jpg" alt />
                <div class="sfq_top">沐风</div>
                <div class="sfq_button">[手机在线] 更新了说说</div>
              </div>
            </van-collapse-item>
            <van-collapse-item title="我加入的群聊" name="9">
              <div class="sfq">
                <img src="5.jpg" alt />
                <div class="sfq_top">咸鱼</div>
                <div class="sfq_button">[手机在线] 更新了说说</div>
              </div>
            </van-collapse-item>
          </van-collapse>
        </van-tab>
        <van-tab title="设备">
          <div class="haoiyou">
            <div class="sfq">
              <img src="siannao.png" alt />
              <div class="sfq_top">我的电脑</div>
              <div class="sfq_button">[在线] 无需数据，手机轻松传文件到电脑</div>
            </div>
            <div class="sfq">
              <img src="shebei.png" alt />
              <div class="sfq_top">发现新设备</div>
              <div class="sfq_button">搜索附近的设备，用QQ轻松链接设备</div>
            </div>
          </div>
        </van-tab>
        <van-tab title="通讯录"></van-tab>
      </van-tabs>
    </van-pull-refresh>
  </div>
</template>
 
<script>
import search from "./search.vue"; //搜索

export default {
  //import引入的组件需要注入到对象中才能使用
  components: {
    search
  },
  data() {
    //这里存放数据
    return {
      isLoading: false,
      // 同时最多展开面板数
      activeName: ""
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
/* /deep/ 深度修改选择器 >>> 也是深度修改选择器 */
/* 上面两个深度修改选择器可以穿透scoped的限制，修改子组件的样式 */
/* vant和mintui中无法修改的组件样式就可以用深度修改选择器 */
/* 用法 */
/* 父级元素 深度选择器 子组件的class */
.contacts /deep/ [class*="van-hairline"]::after {
  border: 0 solid #ffffff00 !important;
}
.contacts /deep/ .van-tab--active {
  background-color: #0ad0ff40;
  /* margin: 0 1.25rem;
     */
  width: 3.75rem;
  border-radius: 1.25rem;
}
.contacts /deep/ .van-tabs__wrap--scrollable .van-tab {
  height: 1.875rem;
  margin: 0 0.625rem;
  flex: 0 0 20% !important;
}
.contacts /deep/ .van-tab {
  line-height: 1.875rem !important;
}
/* 消除手风琴背景颜色 */
.contacts /deep/ .van-cell {
  background-color: transparent;
  color: #fff;
}
.contacts /deep/.van-collapse-item__content {
  background-color: transparent;
}
.contacts /deep/ .van-pull-refresh {
  overflow: visible;
}
.contacts /deep/ .van-cell:not(:last-child)::after {
  border: 0;
}
/* 背景 */
.contacts {
  padding-top: 4.3rem;
  height: calc(100% - 4.3rem);
  position: absolute;
  width: 100%;
}
/* 新朋友文字 */
.xpy {
  margin-left: 2rem;
  color: #fff;
  height: 3rem;
}
/* 分组中的图片 */
.sfq img {
  width: 2.1875rem;
  height: 2.1875rem;
  border-radius: 50%;
  margin-right: 1rem;
  float: left;
}
/* 分组中的名字 */
.sfq_top {
  color: rgb(255, 255, 255);
  height: 1.125rem;
  font-size: 0.875rem;
  font-weight: 300;
  line-height: 1.25rem;
}
/* 分组中的更新了说说 */
.sfq_button {
  height: 0.75rem;
  font-size: 0.625rem;
  color: #fff;
}
/* 好有列表中的样式 */
.haoiyou .sfq {
  margin-top: 0.625rem;
  height: 3.125rem;
  margin-left: 1.5rem;
}
</style> 