package com.team.cf.service;

import com.team.cf.entity.Items;
import com.team.cf.entity.Member;
import com.team.cf.entity.ProjectReturn;

import java.sql.SQLException;

//项目发起人信息填写 表单提交
public interface FormService {
    //项目信息注册
    public boolean registerProjectForm(Items items);
    //删除项目
    public boolean delProjectForm(int pid);
    //通过账户查询id（关联项目）
    public Object selectIdByLoginAcct(String loginacct);
    //public boolean insertProjectReturn(ProjectReturn projectreturn);
    //通过email查询发起人真实姓名
    public String selectRealNameByEmail(String email);


    //通过项目名字查询项目id（关联回报）
    public int selectIdByProjectName(String name);
    //通过email 账户查询有没有这个人
    public Member selectOneByEmailAndLoginAcct(String email,String loginacct) ;
    public Boolean validateProjectName(String name) ;
}
