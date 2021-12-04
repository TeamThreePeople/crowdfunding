package com.team.cf.dao.impl;

import com.sun.org.apache.xpath.internal.operations.Bool;
import com.team.cf.dao.BaseDao;
import com.team.cf.dao.ProjectReturnDao;
import com.team.cf.entity.ProjectReturn;

import java.sql.SQLException;

/**
 * @Description TODO
 * @Author 郝者伦
 * @Date 2021/12/2 22:04
 */
public class ProjectReturnImpl extends BaseDao<ProjectReturn> implements ProjectReturnDao {
    //插入一条回报信息
    @Override
    public int insertReturn(ProjectReturn pr) throws SQLException {
        String sql="insert into t_return values(default,?,?,?,?,?,?,0,?,?,?)";
        int i = this.update(sql,
                pr.getProjectid(),
                pr.getType(), pr.getSupportmoney(), pr.getContent(),
                pr.getCount(), pr.getSignalpurchase(),
                pr.getFreight(), pr.getInvoice(), pr.getRtndate());
        return i;
    }
}
