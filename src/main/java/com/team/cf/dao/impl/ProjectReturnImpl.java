package com.team.cf.dao.impl;

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
        String sql="insert into t_return values(default,?,?,?,?,?,?,0,?,?,?)";
        int i = this.update(DataSourceUtils.getConnection(),sql,
                pr.getProjectid(),
                pr.getType(), pr.getSupportmoney(), pr.getContent(),
                pr.getCount(), pr.getSignalpurchase(),
                pr.getFreight(), pr.getInvoice(), pr.getRtndate());
        return i;
    }

    //查询回报内容
    @Override
    public ProjectReturn findReturn(int cid) throws SQLException {
        String sql = "select * from t_return r,t_project p where r.projectid=p.id and cid = ?";
        ProjectReturn projectReturn = this.getBean(DataSourceUtils.getConnection(),sql, ProjectReturn.class, cid);
        return projectReturn;
    }
}
