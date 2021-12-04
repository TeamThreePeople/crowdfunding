package com.team.cf.service;

import com.team.cf.entity.Items;

public interface ProjectService {
    //通过商品id查询商品
    public Items findProjectById(String id);
    //通过商品id查询发起人名字
    public String findNameById(String id);
}
