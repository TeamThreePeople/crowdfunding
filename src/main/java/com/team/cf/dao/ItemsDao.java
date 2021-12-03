package com.team.cf.dao;

import com.team.cf.entity.Items;
import java.sql.SQLException;
import java.util.List;

public interface ItemsDao  {

    //首页商品查询
    public List<Items> selectAllItems() throws SQLException ;

    //通过商品编号，查询商品信息
    public Items selectOne(String id) throws Exception;

}
