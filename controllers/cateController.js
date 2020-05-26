var dbConfig = require('../util/dbconfig');
//获取分类
var getCate=(req,res)=>{
    var sql = 'select * from cate';
    var sqlArr = [];
    var callBack = (err,data)=>{
      if(err){
        console.log('---连接出错了----')
      }else{
        res.send({
          'list':data
        })
      }
    }
    dbConfig.sqlConnect(sql,sqlArr,callBack);
}
module.exports = {
    getCate
};