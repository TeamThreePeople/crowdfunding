package com.team.cf.service;

import com.team.cf.entity.Items;

import java.util.List;

public interface ItemsService {
    //首页展示商品信息
    public List<Items> viewAllItems();
    //通过商品id查询商品
    public Items findProductById(String id);
}
