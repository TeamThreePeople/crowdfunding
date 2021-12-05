package com.team.cf.service;

import com.team.cf.entity.Items;
import com.team.cf.vo.PageVo;

import java.util.List;

public interface ItemsService {


    //首页展示商品信息
    public List<Items> viewAllItems();

    //查询商品详情 编号
    public Items findItemsById(String id);

    public PageVo<Items> findAllProducts(String cid , String pname ,String status,String sort_id, int pageNow);

    public Items findProductById(String pid);

    //修改关注数量
    public boolean modifyLikeNumerber(int id ,int count);

    //查询总关注数
    public int  selectLikeCount(int id);

    //通过订单编号，查询订单明细及商品信息
    public Items selectItemAndProductByOid(String oid);

}
