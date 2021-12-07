package com.team.cf.dao;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.MapListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

/**
 * @version 1.0
 * @Description 封装基础CRUD操作
 * @Author chenmin
 * @Date 2021/11/29 10:50
 */
public class BaseDao<T> {

    private QueryRunner runner = new QueryRunner();

    //查询单个
    public Object getSingleValue(Connection conn , String sql , Object...params) throws SQLException {
        Object o = runner.query(conn, sql, new ScalarHandler<>(), params);
        return o;
    }

    //查询单个对象
    public T getBean(Connection conn,String sql,Class<T> clazz,Object...params) throws SQLException {
        T t = runner.query(conn, sql, new BeanHandler<>(clazz), params);
        return t;
    }

    //查询多个对象
    public List<T> getBeanList(Connection conn, String sql, Class<T> clazz, Object...params) throws SQLException {
        List<T> list = runner.query(conn, sql, new BeanListHandler<>(clazz), params);
        return list;
    }

    //多表查询数据
    public List<Map<String,Object>> getMapList(Connection conn, String sql, Object...params) throws SQLException {
        List<Map<String, Object>> mapList = runner.query(conn, sql, new MapListHandler(), params);
        return mapList;
    }

    //增删改
    public int update(Connection conn, String sql, Object...params) throws SQLException {
        int i = runner.update(conn, sql, params);
        return i;
    }
}
