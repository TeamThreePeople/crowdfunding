package com.team.cf.service.impl;

import com.team.cf.dao.impl.ItemsDaoImpl;
import com.team.cf.entity.Items;
import com.team.cf.service.ItemsService;
import com.team.cf.utils.JDBCUtils;
import com.team.cf.vo.PageVo;

import java.sql.SQLException;
import java.util.List;

/**
 * @Description TODO
 * @Author shejiatao
 * @Date 2021/11/29 16:13
 */
public class ItemsServiceImpl implements ItemsService {

    private ItemsDaoImpl dao = new ItemsDaoImpl();

    //首页展示商品信息
    @Override
    public List<Items> viewAllItems() {
        try {
            return dao.selectAllItems();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally {
            JDBCUtils.close();
        }
        return null;
    }

    //查询商品详情 编号
    @Override
    public Items findItemsById(String id) {
        System.out.println("ItemsServiceImpl findItemsById");
        try {
            Items items = dao.selectOneItems(id);
            System.out.println("items = "+items);
            return items;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.close();
        }
        return null;
    }

    /**
     * 分页+搜索+商品列表展示
     * @param cid   商品类别编号
     * @param pname 商品的名称
     * @param pageNow   当前页码
     * @return  分页辅助类
     */
    @Override
    public PageVo<Items> findAllProducts(String cid , String pname ,String status,String sort_id, int pageNow){
        PageVo<Items> vo = null;
        try {
            //查询商品的总记录数
            int myCounts = dao.selectCounts(cid, pname,status,sort_id).intValue();//查询记录数
            System.out.println("myCounts="+myCounts);
            //计算总页数
            int myPages = (int)(myCounts%8==0?myCounts/8:Math.ceil(myCounts/8.0));
            //计算起始值
            int begin = (pageNow-1)*8;
            //商品列表
            List<Items> list = dao.selectAll(cid, pname, status,sort_id,begin);//查询所有
            //封装vo
            vo = new PageVo<>(pageNow,myPages,myCounts,cid,pname,status,sort_id,list);
            System.out.println("serviceVo="+vo.toString());
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.close();
        }
        return vo;
    }


    public PageVo<Items> showAll(String cid , String pname ,String status,String sort_id, int pageNow){
        PageVo<Items> vo = null;
        try {
            //查询商品的总记录数
            int myCounts = dao.selectCounts(cid, pname,status,sort_id).intValue();//查询记录数
            System.out.println("myCounts="+myCounts);
            //计算总页数
            int myPages = (int)(myCounts%8==0?myCounts/8:Math.ceil(myCounts/8.0));
            //计算起始值
            int begin = (pageNow-1)*8;
            //商品列表
            List<Items> list = dao.showAll(cid, pname, status,sort_id,begin);//查询所有
            //封装vo
            vo = new PageVo<>(pageNow,myPages,myCounts,cid,pname,status,sort_id,list);

        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.close();
        }
        return vo;
    }



    //通过商品编号，插入商品信息
    @Override
    public Items findProductById(String pid) {

        return null;
    }



}
