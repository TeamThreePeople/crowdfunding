package com.team.cf.dao;

import com.team.cf.entity.Items;

import java.sql.SQLException;
import java.util.List;

public interface ItemsDao  {

    //首页商品查询
    public List<Items> selectAllItems() throws SQLException ;


    //查询商品详情 编号
    public Items selectOneItems(String id) throws SQLException;

    //查询商品的总记录数
    public Long selectCounts(String cid,String pname,String status,String sort_id) throws Exception;


    //查询商品的列表
    public List<Items> selectAll(String cid,String pname, String status,String sort_id,int begin) throws Exception;

    //通过商品编号，查询商品信息
    public Items selectOne(String pid) throws Exception;

    //查询没有条件的所有商品
    public List<Items> showAll(String cid,String pname, String status,String sort_id,int begin) throws SQLException;

    public int modifyLikeNumerber(int id ,int count) throws SQLException;

    public int selectLikeCount(int id) throws SQLException;

    //通过订单编号，查询订单明细及商品信息
    public Items selectItemAndProductByOid(String oid) throws SQLException;

    //通过人id和商品id查找商品信息  个人中心我的关注
    public List<Items> selectAllItemsByUid(int uid,int begin) throws SQLException;

    //通过人id和商品id查找商品信息  个人中心我的关注  总数
    public Long selectAllLikeItemsByUid(int uid) throws SQLException;

}
