package com.team.cf.dao;

import com.team.cf.entity.Property;

import java.sql.SQLException;

public interface PersonalPropertyDao {

    //个人中心我的资产
    public Property selectAllProperty(String oid) throws SQLException;
}
