/*
 * @Author: 潮汐
 * @Date: 2020-02-19 13:36:21
 * @LastEditors: 朱俊
 * @LastEditTime: 2020-03-01 11:38:59
 * @Description: 
 */

//引入http-errors模块
var createError = require('http-errors');
//引入express模块
var express = require('express');
//引入path模块
var path = require('path');
//引入cookieParser模块
const cookieParser = require('cookie-parser');
//引入morgan模块
var logger = require('morgan');
//引入express模块
const session = require("express-session");
var redisStore = require("connect-redis")(session);
const localstorage = require("node-localstorage");
//引入cors模块
const cors = require("cors");
//引入connect-history-api-fallback模块
const history = require('connect-history-api-fallback');

/*引入路由模块*/

let regRouter = require("./router/reg.js");
let loginRouter = require("./router/login.js");

/*跨域模块*/
var app = express();
app.use(history());
app.use(cors({
  origin: [
    "http://localhost:8080",
    "http://127.0.0.1:5500",
    "http://176.221.15.50:5500",
    "http://176.221.15.50:8080", 
    "http://127.0.0.1:8080",
    "http://192.168.1.100:8080",
    "http://192.168.1.100:8081",
    "http://192.168.1.100:8082",
    "http://192.168.1.101:8080",
    "http://172.81.251.8:5050",
    "http://zhujun163.cn:8080",
    "http://172.81.251.8:8080",
    "http://192.168.1.100:8080",
    "http://172.81.251.8:8080",
    "http://zhujun163.cn:8080",

  ],
  credentials: true
}))
//origin数组中的地址，都是允许跨域的客户端网站地址

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({
  extended: false
}));
app.use(cookieParser());
app.use(session({
  secret: '随机字符串',
  cookie: {
    maxAge: 60000 * 1000 * 300
  }, //过期时间ms
  resave: false,
  saveUninitialized: true

})); //将服务器的session，放在req.session中
app.use(express.static("./public"));

/*使用路由器来管理路由*/
app.use("/regUser", regRouter);
app.use("/userLogin", loginRouter);



// catch 404 and forward to error handler
app.use(function (req, res, next) {
  next(createError(404));
});

// error handler
app.use(function (err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  // res.render('error');
});

module.exports = app;
console.log("服务器以启动");