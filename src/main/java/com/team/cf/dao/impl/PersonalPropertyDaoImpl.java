package com.team.cf.dao.impl;

import com.team.cf.dao.BaseDao;
import com.team.cf.dao.OrderDao;
import com.team.cf.dao.PersonalPropertyDao;
import com.team.cf.entity.Orders;
import com.team.cf.entity.Property;
import com.team.cf.utils.DataSourceUtils;

import java.sql.SQLException;

public class PersonalPropertyDaoImpl extends BaseDao<Property> implements PersonalPropertyDao {


    @Override
    public Property selectAllProperty(String oid) throws SQLException {
        String sql = "select o.money,t.cid,t.cname\n" +
                "from t_member u,t_order o,t_project p ,t_type t\n" +
                "where o.memberid = u.id and o.projectid = p.id and p.cid = t.cid\n" +
                "and o.ordernum = ?";
        Property property = this.getBean(DataSourceUtils.getConnection(), sql, Property.class, oid);
        System.out.println("dao"+property);
        return property;
    }
}
