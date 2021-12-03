package com.team.cf.service;



import com.team.cf.entity.Category;
import com.team.cf.entity.Orderby;
import com.team.cf.entity.Status;

import java.util.List;

/**
 * @version 1.0
 * @Description TODO
 * @Author chenmin
 * @Date 2021/11/30 10:43
 */
public interface CategoryService {

    //查询商品类别的列表
    public List<Category> findAllCategory();

    //通过编号，查询商品类别的名称
    public String findNameById(String cid);

}
