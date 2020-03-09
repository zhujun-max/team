//引入express模块
const express=require("express");
//引入发送短信（qcloudsms_js）模块
const QcloudSms=require("../node_modules/qcloudsms_js");
//引入加密模块crypto
const md5=require("md5");
//引入数据库连接池
const pool=require("../pool/pool.js");
//创建路由器regRouter
let router=express.Router();
//获取当输入的手机号的全局变量
 var phoneNumC;
 //随机生成4位数的验证码
 let arr1=[0,1,2,3,4,5,6,7,8,9];
 let arr2=arr1.reverse();
 let arrSum=[
  arr1.splice(Math.floor(Math.random()*arr1.length),1),
  arr2.splice(Math.floor(Math.random()*arr2.length),1),
  arr1.splice(Math.floor(Math.random()*arr1.length),1),
  arr2.splice(Math.floor(Math.random()*arr2.length),1)
 ];
 //向数据库发送并添加的验证码与发送至手机的验证码的全局变量
 let regcode=arrSum.join("");
 //添加验证码和发送验证码
router.post("/reg/v1/code",(req,res)=>{
   //获取当前输入的手机号
    phoneNumC=req.body.rphone;
    
    //获取参数
    let $rid=null,$regCode=regcode;
    //创建并保存sql
    let sql="insert into yt_reg_code values(?,?)";
    //执行SQL语句
    pool.query(sql,[$rid,$regCode],(err,result)=>{
         if(err) throw err;
         if(result.affectedRows>0){
            res.send("1");
            //调用发送验证码的方法
             SendVerificationCode();
         }else{
            res.send("0");
         }
    });
});
//查询数据库中的验证码
router.get("/select/v1/code",(req,res)=>{
   //获取的验证码
   let code=req.query.rcodes;
   //创建并保存查询的sql
   let sql="select code from yt_reg_code where code=?"
   //执行SQL语句
   pool.query(sql,code,(err,result)=>{
      if(err) throw err;
      //console.log(result);
      if(result.length>0){
         res.send("1");
      }else{
         res.send("0");
      }
   });
});
//查询用户名
router.get("/select/v1/rname",(req,res)=>{
    //获取参数
    let rname=req.query.rnames;
    //创建并保存要执行的sql语句
    let sql="select rname from yt_reg_user where rname=?";
    //执行SQL语句
    pool.query(sql,rname,(err,result)=>{
        if(err) throw err;
       // console.log(result);
        if(result.length>0){
           res.send("1");
        }else{
           res.send("0");
        }
    });
});
//查询手机号
router.get('/select/v1/phone',(req,res)=>{
   //获取参数
   let rphone=req.query.rphones;
   //创建并保存要执行的sql语句
   let sql="select rphone from yt_reg_user where rphone=?";
   //执行SQL语句
   pool.query(sql,rphone,(err,result)=>{
       if(err) throw err;
       console.log(result);
       if(result.length>0){
          res.send("1");
       }else{
          res.send("0");
       }
   });
     
});
//添加注册的数据
router.post("/insert/v1/reg/user",(req,res)=>{
    //获取参数
     let pwd=req.body.rpwd,
     uname=req.body.rname;
   //创建对象保存获取的参数
   let obj={
       rid:null,
       rname:req.body.rname,
       rpwd:req.body.rpwd,
       remail:null,
       rgender:null,
       rphone:req.body.rphone,
       user_name:null,
       rtimg:null
   };
   //创建并保存要执行的sql语句
   let sql="insert into yt_reg_user set?";
   //执行SQL语句
   pool.query(sql,[obj],(err,result)=>{
       if(err) throw err;
       if(result.affectedRows>0){
         //创建并保存sql
         let lusql=`INSERT INTO yt_login_user VALUES(null,'${uname}',md5('${pwd}'),null,null,null,null)`;
         //执行sql语句
       pool.query(lusql,(err,result)=>{
           if(err) throw err;
           //console.log(result);
       });
          res.send("1");
       }else{
          res.send("0");
       }
   });

});
//导出路由器
module.exports=router;
//实现发送送验证码的函数
function SendVerificationCode(){
    /*输入手机号返回验证码*/
   // 短信应用SDK AppID
   let appid = 1400320197;  // SDK AppID是1400开头   修改后
   // 短信应用SDK AppKey
    let appkey = "d7c4ce8b77ff8b2c3442893477d481ab";

   // 需要发送短信的手机号码
    let phoneNumbers = [phoneNumC];

   // 短信模板ID，需要在短信应用中申请
    let templateId = 539310;  // NOTE: 这里的模板ID`7839`只是一个示例，真实的模板ID需要在短信控制台中申请

   // 签名
    let smsSign = "朱俊知识分享";  // NOTE: 这里的签名只是示例，请使用真实的已申请的签名, 签名参数使用的是`签名内容`，而不是`签名ID`

   // 实例化QcloudSms
    let qcloudsms = QcloudSms(appid, appkey);

   // 设置请求回调处理, 这里只是演示，用户需要自定义相应处理回调
    function callback(err, res, resData) {
        if (err) {
            //console.log("err: ", err);
        } else {
            //console.log("request data: ", res.req);
           // console.log("response data: ", resData);
        }
    }
    let ssender = qcloudsms.SmsSingleSender();
    let params = [regcode];
    ssender.sendWithParam(86, phoneNumbers[0], templateId,
        params, smsSign, "", "", callback);  // 签名参数不能为空串
}
