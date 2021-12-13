package com.team.cf.service;

import com.team.cf.entity.Items;
import com.team.cf.entity.Orders;
import com.team.cf.vo.PageVo;

import java.util.List;

public interface ItemsService {


    //首页展示商品信息
    public List<Items> viewAllItems();

    //查询商品详情 编号
    public Items findItemsById(String id);

    public PageVo<Items> findAllProducts(String cid , String pname ,String status,String sort_id, int pageNow);

    public Items findProductById(String pid);

    //最新商品
    public List<Items> selectNewItems();


    //修改关注数量
    public boolean modifyLikeNumerber(int id ,int count);

    //查询总关注数
    public int  selectLikeCount(int id);

    //通过订单编号，查询订单明细及商品信息
    public Items selectItemAndProductByOid(String oid);

    //通过人id和商品id查找商品信息  个人中心我的关注
    public PageVo<Items> selectAllItemsByUid(int uid,int pageNow);

    //通过人id和商品id查找商品信息  浏览记录
    public List<Items> selectViewItemsByUid(int uid);

    //通过pid修改当前商品金额&支持人数
    public boolean modifyItemsMoney(int pid ,int money ,int count);

    //个人中心-我发起的
    public PageVo<Items> selectMyInitiated(int uid,int pageNow);

    //查看项目状态
    public PageVo<Items> selectItemsStatus(int uid, int status, int pageNow);

    //通过pid下架商品
    public boolean delItems(int pid);

    //通过oid查询商品信息
    public Items findItemsByOid(String oid);

    //修改项目状态
    public boolean updateItemsStatus(int pid );
}
