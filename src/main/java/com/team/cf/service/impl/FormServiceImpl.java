package com.team.cf.service.impl;

import com.team.cf.dao.impl.FormDaoImpl;
import com.team.cf.entity.Items;
import com.team.cf.service.FormService;
import com.team.cf.utils.DataSourceUtils;
import com.team.cf.utils.JDBCUtils;

import java.sql.SQLException;

/**
 * @Description 发起项目表单填写
 * @Author 郝者伦
 * @Date 2021/12/1 22:33
 */
public class FormServiceImpl implements FormService {

    private FormDaoImpl dao=new FormDaoImpl();

    //注册项目信息
    @Override
    public boolean registerProjectForm(Items items) {
        try {
            int i = dao.insertProject(items);
            return i > 0;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                DataSourceUtils.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    //通过真实姓名查询用户id
    @Override
    public Object selectIdByEmail(String email) {
        Object id = null;
        try {
            id = dao.selectIdByEmail(email);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                DataSourceUtils.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return id;
    }

    //通过email查询发起人真实姓名
    @Override
    public String selectRealNameByEmail(String email) {
        String realname=null;
        try {
            realname = dao.selectRealNameByEmail(email);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                DataSourceUtils.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return realname;
    }
    //通过项目名字查询项目id
    @Override
    public int selectIdByProjectName(String name) {
        Integer id=0;
        try {
            id = dao.selectIdByProjectName(name);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                DataSourceUtils.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return id;
    }

}
