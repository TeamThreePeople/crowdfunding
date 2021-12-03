package com.team.cf.service;

import com.team.cf.entity.Great;

public interface GreatService {
    //找点赞情况
    public Great findGreatByAidAndUid(Integer aid, Integer uid);

    //添加点赞
    public boolean insertGreat(Great great) ;

    //删除点赞
    public boolean deleteGreat(Great great) ;
}
