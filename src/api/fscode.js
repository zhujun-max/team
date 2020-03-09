//发送验证码的ajax接口
import axios from "axios"
export function fsCode(rphone){
  return new Promise((resolve,reject)=>{
     axios.post("/regUser/reg/v1/code",{rphone}).then
     (result=>{
        resolve(result.data);
     });
  });
}