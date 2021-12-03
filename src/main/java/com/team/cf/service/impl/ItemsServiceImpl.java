package com.team.cf.service.impl;

import com.team.cf.dao.impl.ItemsDaoImpl;
import com.team.cf.entity.Items;
import com.team.cf.service.ItemsService;
import com.team.cf.utils.JDBCUtils;

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

    //通过商品编号查询个人信息
    @Override
    public Items findProductById(String id) {
        try {
            Items items = dao.selectOne(id);
            System.out.println("items imp="+items);
            return items;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JDBCUtils.close();
        }
        return null;
    }
}
