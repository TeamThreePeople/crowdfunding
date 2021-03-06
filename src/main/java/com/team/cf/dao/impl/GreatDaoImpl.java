package com.team.cf.dao.impl;


import com.team.cf.dao.BaseDao;
import com.team.cf.dao.GreatDao;
import com.team.cf.entity.Great;
import com.team.cf.utils.DataSourceUtils;

import java.sql.SQLException;

/**
 * @Description TODO
 * @Author chenJunYu
 * @Date 2021/12/2 15:22
 */
public class GreatDaoImpl extends BaseDao<Great> implements GreatDao {


    //找点赞情况
    @Override
    public Great findGreatByAidAndUid(Integer aid,Integer uid) throws SQLException {
        System.out.println("GreatDaoImpl findGreat");
        String sql="select * from great where aid = ? and uid = ?";
        Great great = this.getBean(DataSourceUtils.getConnection(),sql, Great.class, aid, uid);
        System.out.println("great = "+great);
        return great;
    }

    //插入点赞情况
    @Override
    public int insertGreat(int aid ,int uid) throws SQLException {
        String sql = "insert into great values(default,?,?)";
        int i = this.update(DataSourceUtils.getConnection(),sql,aid, uid);
        return i;
    }

    //删除点赞情况
    @Override
    public int deleteGreat(int aid ,int uid) throws SQLException {
        String sql = "delete from great where aid = ? and uid = ?";
        int i = this.update(DataSourceUtils.getConnection(),sql,aid,uid);
        return i;
    }

}
