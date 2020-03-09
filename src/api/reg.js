import axios from "axios"
//注册数据添加ajax请求接口
export function Reg(rname,rpwd,rphone) {
  return new Promise((resolve,reject)=>{
     axios.post("/regUser/insert/v1/reg/user",{
       rname,
       rpwd,
       rphone
     }).then(result=>{
       resolve(result.data);
     });
  });
}