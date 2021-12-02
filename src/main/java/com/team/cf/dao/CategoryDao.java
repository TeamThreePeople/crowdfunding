package com.team.cf.dao;

import com.team.cf.entity.Category;
import com.team.cf.entity.Orderby;
import com.team.cf.entity.Status;

import java.util.List;

public interface CategoryDao {

    public List<Category> selectAll() throws Exception;

    public String selectOne(String cid) throws Exception;


}
