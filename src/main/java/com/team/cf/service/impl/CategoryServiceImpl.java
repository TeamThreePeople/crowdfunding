package com.team.cf.service.impl;

import com.team.cf.dao.CategoryDao;
import com.team.cf.dao.impl.CategoryDaoImpl;
import com.team.cf.entity.Category;
import com.team.cf.entity.Orderby;
import com.team.cf.entity.Status;
import com.team.cf.service.CategoryService;
import com.team.cf.utils.JDBCUtils;

import java.util.List;

/**
 * @Description TODO
 * @Author shejiatao
 * @Date 2021/11/30 20:00
 */
public class CategoryServiceImpl implements CategoryService {

    private CategoryDao dao = new CategoryDaoImpl();

    @Override
    public List<Category> findAllCategory() {
        try {
            List<Category> categories = dao.selectAll();
            return categories;
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.close();
        }
        return null;
    }





    @Override
    public String findNameById(String cid) {
        try {
            String cname = dao.selectOne(cid);
            return cname;
        } catch (Exception e) {
            e.printStackTrace();
        }  finally {
            JDBCUtils.close();
        }
        return null;
    }
}
