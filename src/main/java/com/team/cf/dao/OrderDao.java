package com.team.cf.dao;

import com.team.cf.entity.Items;
import com.team.cf.entity.Orders;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

//支持
public interface OrderDao {
    //通过商品编号，查询商品信息
    public Items selectOne(String id) throws Exception;
    //通过商品编号，查询发起人姓名
    public String selectOneName(String id) throws Exception;
    //添加收货地址
    public int addAddress(String username ,String phone , String address,int uid) throws SQLException;



    //插入订单信息
    public int insertOrders(Orders orders) throws SQLException;

    public int insertOrdersItem(Orders orders) throws SQLException;
    //更新订单中的收货人信息
    public int updateOrdersUser(Orders orders)  throws SQLException;
    //更新订单状态
    public int updateOrdersState(String oid) throws SQLException;
    ////通过uid，获取订单信息
    public List<Orders> selectOrdersByUid(String uid, int begin) throws SQLException;
    //根据用户id查询订单数量
    public Long selectOrdersCountByUid(String uid) throws SQLException;
    //通过oid，查询订单明细及商品信息
    public List<Map<String,Object>> selectItemAndProductByOid(String oid) throws SQLException;
    //通过oid 删除订单
    public int delOrder(String oid) throws SQLException;
}
