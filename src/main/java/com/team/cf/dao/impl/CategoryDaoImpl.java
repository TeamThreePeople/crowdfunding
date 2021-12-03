package com.team.cf.dao.impl;

import com.team.cf.dao.BaseDao;
import com.team.cf.dao.CategoryDao;
import com.team.cf.entity.Category;
import com.team.cf.entity.Orderby;
import com.team.cf.entity.Status;

import java.util.List;

/**
 * @Description 商品类别的数据交互层
 * @Author shejiatao
 * @Date 2021/11/30 19:57
 */
public class CategoryDaoImpl extends BaseDao<Category> implements CategoryDao {

    //查询所有商品类别
    @Override
    public List<Category> selectAll() throws Exception {
        String sql = "select * from t_type";
        List<Category> list = this.getBeanList(sql, Category.class);
        return list;
    }


    //根据编号，查询商品类别的名称
    @Override
    public String selectOne(String cid) throws Exception {
        String sql = "select cname from t_type where cid= ? ";
        String cname = this.getSingleValue(
                sql, cid).toString();
        return cname;
    }


}
