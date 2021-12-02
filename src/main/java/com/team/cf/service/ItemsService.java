package com.team.cf.service;

import com.team.cf.entity.Items;
import com.team.cf.vo.PageVo;

import java.util.List;

public interface ItemsService {


    public List<Items> viewAllItems();

    public PageVo<Items> findAllProducts(String cid , String pname ,String status,String sort_id, int pageNow);

    public Items findProductById(String pid);

}
