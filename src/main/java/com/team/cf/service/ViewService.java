package com.team.cf.service;

import com.team.cf.entity.View;

import java.sql.SQLException;

public interface ViewService {

    //查找浏览情况
    public View selectViewByprojectidAndmemberid(int projectid, int memberid) throws SQLException;

    //点击商品 添加
    public boolean addViewItem(int projectid,int memberid);

    //点击商品 删除
    public boolean deleteViewItem(int projectid,int memberid);

}
