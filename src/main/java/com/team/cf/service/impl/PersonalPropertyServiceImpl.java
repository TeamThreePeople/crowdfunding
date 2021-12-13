package com.team.cf.service.impl;

import com.team.cf.dao.PersonalPropertyDao;
import com.team.cf.dao.impl.PersonalPropertyDaoImpl;
import com.team.cf.entity.Property;
import com.team.cf.service.PersonalPropertyService;
import com.team.cf.utils.DataSourceUtils;

import java.sql.SQLException;

/**
 * @Description TODO
 * @Author shejiatao
 * @Date 2021/12/7 21:07
 */
public class PersonalPropertyServiceImpl implements PersonalPropertyService {

    private PersonalPropertyDao dao = new PersonalPropertyDaoImpl();

    //个人中心我的资产
    @Override
    public Property selectAllProperty(String oid) {
        Property property = null;
        try {
            property = dao.selectAllProperty(oid);
            System.out.println("service"+property);

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            try {
                DataSourceUtils.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return property;
    }
}