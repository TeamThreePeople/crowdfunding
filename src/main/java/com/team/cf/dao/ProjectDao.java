package com.team.cf.dao;

import com.team.cf.entity.Items;

//支持
public interface ProjectDao {
    //通过商品编号，查询商品信息
    public Items selectOne(String id) throws Exception;
    //通过商品编号，查询发起人姓名
    public String selectOneName(String id) throws Exception;
}
