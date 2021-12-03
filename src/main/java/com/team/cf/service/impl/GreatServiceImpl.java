package com.team.cf.service.impl;

import com.team.cf.dao.GreatDao;
import com.team.cf.dao.impl.GreatDaoImpl;
import com.team.cf.entity.Great;
import com.team.cf.service.GreatService;

import java.sql.SQLException;

/**
 * @Description TODO
 * @Author chenJunYu
 * @Date 2021/12/2 15:33
 */
public class GreatServiceImpl implements GreatService {

    GreatDao dao = new GreatDaoImpl();

    @Override
    public Great findGreatByAidAndUid(Integer aid, Integer uid) {
        System.out.println("GreatServiceImpl findGreat");
        try {
            Great great = dao.findGreatByAidAndUid(aid, uid);
            System.out.println("great = "+great);
            return great;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    //添加点赞
    @Override
    public boolean insertGreat(Great great) {
        System.out.println("GreatServiceImpl insertGreat");
        try {
            int i = dao.insertGreat(great);
            return i>0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    //删除点赞
    @Override
    public boolean deleteGreat(Great great) {
        System.out.println("GreatServiceImpl deleteGreat");
        try {
            int i = dao.deleteGreat(great);
            return i>0;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }
}
