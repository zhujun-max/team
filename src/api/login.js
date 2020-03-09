import axios from "axios"
//验证登录
export function logins(uname,upwd){
    return new Promise((resolve,reject)=>{
       axios.get("/userLogin/loginuser",{params:{
         uname,upwd
       }}).then(result=>{
         resolve(result.data);
       });
    });
}