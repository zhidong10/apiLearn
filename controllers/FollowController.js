var dbConfig = require('../util/dbconfig');

//检查用户是否关注
let checkFollow = async (user_id,follow_id)=>{
    let sql = `select * from follow where user_id=? and follow_id=?`;
    let sqlArr = [user_id,follow_id];
    let result = await dbConfig.SySqlConnect(sql,sqlArr);
    if(result.length && result.length > 0){
        return true;
    }else{
        return false;
    }
}
//关注
let follow =async (req,res)=>{
    let {user_id,follow_id} = req.query;
    //检查是否之前关注过
    console.log(checkFollow(user_id,follow_id));
    if(! await checkFollow(user_id,follow_id)){
        if(user_id == follow_id){
            res.send({
                code:400,
                msg:'亲，不能关注自己'
            })
        }else{
            let sql = `insert into follow (follow_id,user_id,create_time) values (?,?,?)`;
            let sqlArr = [follow_id,user_id,(new Date()).valueOf()];
            let result = await dbConfig.SySqlConnect(sql,sqlArr);
            if(result.affectedRows == 1){
                res.send({
                    code:200,
                    msg:'亲，关注成功！'
                })
            }else{
                res.send({
                    code:400,
                    msg:'亲，关注失败！'
                })
            }
        }
    }else{
        res.send({
            code:400,
            msg:'亲，不能重复关注'
        })
    }


}
module.exports = {
    follow
}