import axios from "axios"
//检查用户是否已经注册的Ajax请求
export function CzName(rnames){
   return new Promise((resolve,reject)=>{
     axios.get("/regUser/select/v1/rname",{params:{rnames}})
     .then(result=>{
       resolve(result.data);
     })
     ;
   });
}