package com.team.cf.service;

import com.team.cf.entity.Great;

public interface GreatService {
    //找点赞情况
    public Great findGreatByAidAndUid(Integer aid, Integer uid);

    //添加点赞
    public boolean insertGreat(int aid ,int uid) ;

    //删除点赞
    public boolean deleteGreat(int aid ,int uid) ;
}
