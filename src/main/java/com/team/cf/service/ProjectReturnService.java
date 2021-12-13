package com.team.cf.service;

import com.team.cf.entity.ProjectReturn;

public interface ProjectReturnService  {
    //插入一条回报信息
    public Boolean insertReturn(ProjectReturn pr);
    //更新信息
    public Boolean updateReturn(ProjectReturn pr);
    //查询回报内容
    public ProjectReturn findReturn(int pid);

}
