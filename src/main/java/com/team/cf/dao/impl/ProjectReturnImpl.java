package com.team.cf.dao.impl;

import com.sun.org.apache.xpath.internal.operations.Bool;
import com.team.cf.dao.BaseDao;
import com.team.cf.dao.ProjectReturnDao;
import com.team.cf.entity.ProjectReturn;
import com.team.cf.utils.DataSourceUtils;

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
        String sql="insert into t_return values(default,?,?,?,?,?,?,?,?,?,?)";
        int i = this.update(DataSourceUtils.getConnection(),sql,
                pr.getProjectid(),
                pr.getType(), pr.getSupportmoney(), pr.getContent(),
                pr.getCount(), pr.getSignalpurchase(),pr.getPurchase(),
                pr.getFreight(), pr.getInvoice(), pr.getRtndate());
        return i;
    }
    //修改回报信息
    @Override
    public int updateReturn(ProjectReturn pr) throws SQLException {
        String sql="update t_return set type=?,supportmoney=?,content=?,count=?,signalpurchase=?,purchase=?,freight=?,invoice=?,rtndate=?\n" +
                "where projectid=?";
        int i = this.update(DataSourceUtils.getConnection(),sql,
                pr.getType(), pr.getSupportmoney(), pr.getContent(),
                pr.getCount(), pr.getSignalpurchase(), pr.getPurchase(),
                pr.getFreight(), pr.getInvoice(), pr.getRtndate(), pr.getProjectid());
        return i;
    }

    //查询回报内容
    @Override
    public ProjectReturn findReturn(int pid) throws SQLException {
        String sql = "select * from t_return r,t_project p where r.projectid=p.id and p.id = ?";
        ProjectReturn projectReturn = this.getBean(DataSourceUtils.getConnection(),sql, ProjectReturn.class, pid);
        return projectReturn;
    }

}
