<!--
 * @Author: 潮汐
 * @Date: 2020-02-23 00:11:38
 * @LastEditors: 朱俊
 * @LastEditTime: 2020-03-03 20:21:31
 * @Description: 登录页面
 -->
<template>
  <div class="login">
    <!-- 输入内容区域 -->
    <div class="topz">
      <input
        class="input1"
        placeholder="用户名admin"
        type="text"
        onfocus="this.placeholder=''"
        onblur="this.placeholder='默认admin'"
        v-model="uname"
      />
      <br />
      <input
        class="input1"
        placeholder="密码admin"
        type="password"
        onfocus="this.placeholder=''"
        onblur="this.placeholder='密码admin'"
        v-model="upwd"
      />
      <br />
      <button
        :class="(uname=='' || upwd=='') ?'button1':'button2'"
        :disabled="(uname=='' || upwd=='') ?true:false"
        @click="loginUser"
      >
        <img src="../../public/jianto.png" />
      </button>
    </div>
    <!-- 底部忘记密码区域 -->
    <div class="bott">
      <div>
        <a @click="onCancel()">忘记密码</a>
        <span>|</span>
        <a @click="zhuc()">用户注册</a>
      </div>
      <div class="bottm">
        登录即代表阅读并同意
        <a>服务协议</a>
      </div>
    </div>
    <!-- 忘记密码弹出框 -->
    <van-action-sheet v-model="show" :actions="actions" cancel-text="取消" />
  </div>
</template>

<script>
//这里可以导入其他文件（比如：组件，工具js，第三方插件js，json文件，图片文件等等）
//例如：import 《组件名称》 from '《组件路径》';
import { logins } from "../api/login.js";
export default {
  //import引入的组件需要注入到对象中才能使用
  components: {},
  data() {
    //这里存放数据
    return {
      uname: "",
      upwd: "",
      show: false,
      actions: [{ name: "找回密码" }, { name: "短信验证登录" }]
    };
  },
  //监听属性 类似于data概念
  computed: {},
  //监控data中的数据变化
  watch: {},
  
  //方法集合
  methods: {
    
    zhuc() {
      this.$router.push({
        path: "/sigin"
      });
    },
    // 忘记密码弹出框
    onCancel() {
      this.show = true;
    },
    // 点击按钮触发登录验证
    loginUser() {
      if (this.uname == "admin" && this.upwd == "admin") {
        this.$router.push("/homepage");
      } else if (this.uname && this.upwd) {
        logins(this.uname, this.upwd).then(data => {
          console.log(data);
          if (data.code == 1) {
            //  this.$messagebox("提示消息","登录成功");
            this.$router.push("/homepage");
            //  this.userName=data.data;

            //  this.updateName(data.data);
          } else if (data == 0) {
            // this.$messagebox("提示消息", "登录失败,用户名或密码输入错误");
            this.$dialog.alert({
              title: "登录失败",
              message: "请输入正确的账号和密码"
            });
          }
        });
      } else {
        // this.$messagebox("提示消息", "登录失败,用户名或密码输入错误");
        this.$dialog.alert({
          message: "登录失败,用户名或密码输入错误"
        });
      }
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
.login {
  background: url("../../public/splash_big.jpg") no-repeat center;
  background-size: cover;
  position: absolute;
  width: 100%;
  min-height: 100%;
  text-align: center;
}
.topz {
  padding-top: 10rem;
}
.input1 {
  text-align: center;
  width: 81%;
  height: 2.8rem;
  border: 0;
  margin-bottom: 1rem;
  background-color: #f0f4f7;
  border-radius: 1.5rem;
  /* color: lawngreen;
     */
  caret-color: #00c9ee;
}
/* 输入框光标颜色 */
input::placeholder {
  color: #b4b7be;
}
/* 不能点击的按钮样式 */
.button1 {
  background-color: #f0f4f7;
  margin-top: 2rem;
  width: 3rem;
  height: 3rem;
  border-radius: 50%;
  border: 0;
  text-align: center;
}
/* 可点击的按钮样式 */
.button2 {
  background-color: #48b0ff;
  margin-top: 2rem;
  width: 3rem;
  height: 3rem;
  border-radius: 50%;
  border: 0;
  text-align: center;
}
/* 底部内容 */
.bott {
  margin-top: 6rem;
  text-align: center;
  /* transform: translate(-50%, -50%); */
  font-size: 0.7rem;
  color: #8f8e94;
}
.bott a {
  color: #000;
  font-weight: 600;
}
.bott span {
  margin: 0 8%;
}
.bottm {
  margin-top: 0.5rem;
}
</style> 