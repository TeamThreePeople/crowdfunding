package com.team.cf.service;

import com.team.cf.entity.Property;

public interface PersonalPropertyService {

    //个人中心我的资产
    public Property selectAllProperty(String oid);

}
