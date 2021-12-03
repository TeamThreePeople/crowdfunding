package com.team.cf.dao;

import com.team.cf.entity.Items;

import java.sql.SQLException;
import java.util.List;

public interface ItemsDao  {

    //首页商品查询
    public List<Items> selectAllItems() throws SQLException ;

    //查询商品详情 编号
    public Items selectOneItems(String id) throws SQLException;

    //通过商品编号，查询商品信息
    public Items selectOne(String pid) throws Exception;

    //查询没有条件的所有商品
    public List<Items> showAll(String cid,String pname, String status,String sort_id,int begin) throws SQLException;

}
