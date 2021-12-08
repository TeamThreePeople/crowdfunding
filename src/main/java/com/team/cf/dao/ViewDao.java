package com.team.cf.dao;

import com.team.cf.entity.View;

import java.sql.SQLException;

public interface ViewDao {
    //查找浏览情况
    public View selectViewByprojectidAndmemberid(int projectid, int memberid) throws SQLException;

    //点击商品 添加
    public int addViewItem(int projectid,int memberid) throws SQLException;

    //点击商品 删除
    public int deleteViewItem(int projectid,int memberid) throws SQLException;
}
