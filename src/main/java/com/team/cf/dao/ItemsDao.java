package com.team.cf.dao;

import com.team.cf.entity.Items;

import java.sql.SQLException;
import java.util.List;

public interface ItemsDao  {

    //首页商品查询
    public List<Items> selectAllItems() throws SQLException ;

    //查询商品详情 编号
    public Items selectOneItems(String id) throws SQLException;


}
