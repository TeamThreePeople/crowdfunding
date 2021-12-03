package com.team.cf.dao;

import com.team.cf.entity.Great;

import java.sql.SQLException;

public interface GreatDao {

    //查找点赞情况
    public Great findGreatByAidAndUid(Integer aid,Integer uid) throws SQLException;

    //添加点赞
    public int insertGreat(Great great) throws SQLException;

    //删除点赞
    public int deleteGreat(Great great) throws SQLException;
}
