package com.team.cf.service.impl;

import com.team.cf.dao.ViewDao;
import com.team.cf.dao.impl.ViewDaoImpl;
import com.team.cf.entity.View;
import com.team.cf.service.ViewService;
import com.team.cf.utils.DataSourceUtils;

import java.sql.SQLException;

/**
 * @Description TODO
 * @Author chenJunYu
 * @Date 2021/12/7 22:09
 */
public class ViewServiceImpl implements ViewService {
    ViewDao dao = new ViewDaoImpl();

    //查找浏览情况
    @Override
    public View selectViewByprojectidAndmemberid(int projectid, int memberid) {
        try {
            View view = dao.selectViewByprojectidAndmemberid(projectid, memberid);
            return view;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    //点击商品 添加
    @Override
    public boolean addViewItem(int projectid, int memberid) {
        try {
            int i = dao.addViewItem(projectid, memberid);
            return i>0;
        } catch (SQLException e) {
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

    //点击商品 删除
    @Override
    public boolean deleteViewItem(int projectid, int memberid) {
        try {
            int i = dao.deleteViewItem(projectid, memberid);
            return i>0;
        } catch (SQLException e) {
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
}
