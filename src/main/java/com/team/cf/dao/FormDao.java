package com.team.cf.dao;

import com.team.cf.entity.Items;
import com.team.cf.entity.Member;
import com.team.cf.entity.ProjectReturn;

import java.sql.SQLException;

public interface FormDao {

    //通过账户查询发起人id（关联项目）
    public Object selectIdByLoginAcct(String loginacct) throws SQLException;
    //通过email 账户查询有没有这个人
    public Member selectOneByEmailAndLoginAcct(String email,String loginacct) throws SQLException;



    //通过email查询发起人真实姓名
    public String selectRealNameByEmail(String email) throws SQLException;


    //插入项目
    public int insertProject(Items items) throws Exception;
    //通过项目名字查询项目id(关联回报)
    public Integer selectIdByProjectName(String projectName) throws SQLException;
    //查单个
    public Items selectOne(Object... params) throws Exception;
    /*//插入回报
    public int insertProjectReturn(ProjectReturn pr) throws SQLException;*/


}
