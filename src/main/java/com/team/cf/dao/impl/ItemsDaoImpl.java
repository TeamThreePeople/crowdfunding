package com.team.cf.dao.impl;

import com.team.cf.dao.BaseDao;
import com.team.cf.dao.ItemsDao;
import com.team.cf.entity.Items;
import com.team.cf.utils.JDBCUtils;

import java.sql.SQLException;
import java.util.List;

/**
 * @Description TODO
 * @Author shejiatao
 * @Date 2021/11/29 16:07
 */
public class ItemsDaoImpl extends BaseDao<Items> implements ItemsDao{

    //首页展示商品信息
    @Override
    public List<Items> selectAllItems() throws SQLException {
        String sql = "select * from t_project limit 0,?";
        List<Items> products = this.getBeanList(sql, Items.class, 4);
        return products;

    }

    //通过商品编号查询支持信息
    @Override
    public Items selectOne(String id) throws Exception {
        String sql = "select id, name , remark , day , status , deploydate , money , day from t_project where id = ?";
        Items items = this.getBean(sql, Items.class, id);
        return items;
    }
}
