package com.team.cf.service;

import com.team.cf.entity.Items;
import com.team.cf.entity.Member;

//项目发起人信息填写 表单提交
public interface FormService {
    //项目信息注册
    public boolean registerProjectForm(Items items);
    //通过真实姓名查询id
    public Object selectIdByEmail(String email);
    //通过email查询发起人真实姓名
    public String selectRealNameByEmail(String email);

}
