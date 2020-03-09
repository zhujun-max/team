//引入express模块
const express=require("express");
//引入数据库连接池
const pool=require("../pool/pool.js");
var LocalStorage = require('node-localstorage').LocalStorage;
var localStorage = new LocalStorage('./scratch');
//创建登录的路由器
const router=express.Router();
//登录接口ajax请求路径
router.get("/loginuser",(req,res)=>{
  //获取用户名，密码参数
   let uname=req.query.uname,
   upwd=req.query.upwd;
   //创建并保存sql语句
   let sql="select uid,uname,uvip,timg from yt_login_user where uname=? and upwd=md5(?)"
   pool.query(sql,[uname,upwd],(err,result)=>{
     if(err) throw err;
     console.log(result);
     if(result.length>0){ 
         //用于判断不同的用户
          req.session.uid=result[0].uid;
          req.session.uname=result[0].uname;
          req.session.uvip=result[0].uvip;
          req.session.timg=result[0].timg;
         res.send({code:1,data:result[0].uname});//登录成功

     }else{
         res.send("0");//登录失败
     }
   });
});
//注销登录
router.get("/zhuLogin",(req,res)=>{
  var uid =req.session.uid;
  if(!uid){
    res.send("-1");
  }else{
    req.session.uid="";
    req.session.uname="";
    req.session.uvip="";
    req.session.timg="";
    res.send("1");
  }
});
//导出路由器
module.exports=router;