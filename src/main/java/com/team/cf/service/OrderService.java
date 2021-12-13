package com.team.cf.service;

import com.team.cf.entity.Items;
import com.team.cf.entity.Orders;
import com.team.cf.entity.ProjectReturn;
import com.team.cf.vo.PageVo;

import java.util.List;
import java.util.Map;

public interface OrderService {
    //通过商品id查询商品
    public Items findProjectById(String id);
    //通过商品id查询发起人名字
    public String findNameById(String id);
    //添加收货地址
    public int addAddress(String username ,String phone , String address,int uid);

    //查看收货地址
    public Orders selectAddress(String oid);

    //插入订单及订单明细
    public boolean insertOrders(Orders orders);

    //更新订单中的收货人信息
    public boolean updateOrders(Orders orders);

    //更新订单状态
    public boolean updateOrdersState(String oid);

    //通过uid，获取订单信息
    public PageVo<Orders> findAllOrders(String uid, int pageNow);

    //通过oid，查询订单明细及商品信息
    public List<Map<String,Object>> findItemsAndProduct(String oid);

    //通过oid 删除订单
    public boolean delOrder(String oid);

    //查看订单状态
    public PageVo<Orders> selectOrderStatus(int uid,int status, int pageNow);

    //通过oid查询订单信息
    public Orders selectFindOrder(String oid);

    //通过uid，获取订全部单信息
    public List<Orders> selectAllOrders(String uid);



}
