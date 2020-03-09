import axios from "axios"
//验证输入的验证吗ajax请求
export function YzCode(rcodes){
  return new Promise((resolve,reject)=>{
     axios.get("/regUser/select/v1/code",{params:{rcodes}}).then(
      result=>{
         resolve(result.data);
      }
     );
  });
}