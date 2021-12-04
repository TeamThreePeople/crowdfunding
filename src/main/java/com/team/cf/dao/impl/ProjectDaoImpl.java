package com.team.cf.dao.impl;

import com.team.cf.dao.BaseDao;
import com.team.cf.dao.ProjectDao;
import com.team.cf.entity.Items;

/**
 * @Description 支持
 * @Author 郝者伦
 * @Date 2021/12/1 16:11
 */
public class ProjectDaoImpl extends BaseDao<Items> implements ProjectDao {
    //通过商品编号查询支持信息
    @Override
    public Items selectOne(String id) throws Exception {
        String sql = "select id, name , remark , day , status , deploydate , money , day from t_project where id = ?";
        Items items = this.getBean(sql, Items.class, id);
        return items;
    }
     //通过项目id查看用户姓名
    @Override
    public String selectOneName(String id) throws Exception {
        String sql="select m.realname from t_project p join t_member m on p.memberid=m.id where p.id=?";
        String name = (String) this.getSingleValue(sql, id);
        return name;
    }


}
