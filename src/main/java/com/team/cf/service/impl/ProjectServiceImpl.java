package com.team.cf.service.impl;

import com.team.cf.dao.ProjectDao;
import com.team.cf.dao.impl.ProjectDaoImpl;
import com.team.cf.entity.Items;
import com.team.cf.service.ProjectService;
import com.team.cf.utils.JDBCUtils;

/**
 * @Description TODO
 * @Author 郝者伦
 * @Date 2021/12/1 16:29
 */
public class ProjectServiceImpl implements ProjectService {
    ProjectDaoImpl dao=new ProjectDaoImpl();

    //通过商品编号查询个人信息
    @Override
    public Items findProjectById(String id) {
        try {
            Items items = dao.selectOne(id);
            System.out.println("service imp="+items);
            return items;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JDBCUtils.close();
        }
        return null;
    }
    //通过商品id查询发起人名字
    @Override
    public String findNameById(String id) {
        try {
            String name = dao.selectOneName(id);
            System.out.println("service name="+name);
            return name;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
