/*
 * @Author: 潮汐
 * @Date: 2020-02-26 21:22:24
 * @LastEditors: 朱俊
 * @LastEditTime: 2020-03-01 10:51:48
 * @Description: 
 */
const mysql=require("mysql");
let pool=mysql.createPool({
    host:"127.0.0.1",
    port:"3306",
    user:"root",
    password:"",
    database:"yt",
    connectionLimit:60
});
module.exports=pool;
