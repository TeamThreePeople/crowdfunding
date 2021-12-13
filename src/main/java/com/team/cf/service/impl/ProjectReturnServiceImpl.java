package com.team.cf.service.impl;

import com.team.cf.dao.ProjectReturnDao;
import com.team.cf.dao.impl.ProjectReturnImpl;
import com.team.cf.entity.ProjectReturn;
import com.team.cf.service.ProjectReturnService;

import com.team.cf.utils.DataSourceUtils;
import com.team.cf.utils.JDBCUtils;

import java.sql.SQLException;

/**
 * @Description TODO
 * @Author 郝者伦
 * @Date 2021/12/2 22:21
 */
public class ProjectReturnServiceImpl implements ProjectReturnService {
    //插入一条回报信息
    ProjectReturnDao prs=new ProjectReturnImpl();
    @Override
    public Boolean insertReturn(ProjectReturn pr) {
        try {
            int i = prs.insertReturn(pr);
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
    //更新回报
    @Override
    public Boolean updateReturn(ProjectReturn pr) {
        int i=0;
        try {
            i = prs.updateReturn(pr);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                DataSourceUtils.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return i>0;
    }

    //查询回报内容
    public ProjectReturn findReturn(int pid){
        try {
            ProjectReturn projectReturn = prs.findReturn(pid);
            return projectReturn;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            try {
                DataSourceUtils.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return null;
    }
}
