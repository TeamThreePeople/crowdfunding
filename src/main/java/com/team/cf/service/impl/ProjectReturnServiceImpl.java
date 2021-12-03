package com.team.cf.service.impl;

import com.team.cf.dao.ProjectReturnDao;
import com.team.cf.dao.impl.ProjectReturnImpl;
import com.team.cf.entity.ProjectReturn;
import com.team.cf.service.ProjectReturnService;
import com.team.cf.service.ProjectService;
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
            JDBCUtils.close();
        }
        return false;
    }
}
