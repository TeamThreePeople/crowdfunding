package com.team.cf.service;

import com.team.cf.entity.Items;

import java.util.List;

public interface ItemsService {

    //首页展示商品信息
    public List<Items> viewAllItems();

    //查询商品详情 编号
    public Items findItemsById(String id);
}
