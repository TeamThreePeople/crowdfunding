package com.team.cf.dao;

import com.team.cf.entity.Items;
import com.team.cf.entity.Member;

import java.sql.SQLException;

public interface FormDao {

    //通过真实姓名查询发起人email
    public Object selectIdByEmail(String email) throws SQLException;
    //通过email查询发起人真实姓名
    public String selectRealNameByEmail(String email) throws SQLException;
    //插入项目
    public int insertProject(Items items) throws Exception;
}
