package com.team.cf.dao.impl;

import com.team.cf.dao.BaseDao;
import com.team.cf.dao.FormDao;
import com.team.cf.entity.Items;
import com.team.cf.utils.DataSourceUtils;

import java.sql.SQLException;

/**
 * @Description TODO
 * @Author 郝者伦
 * @Date 2021/12/1 22:38
 */
public class FormDaoImpl extends BaseDao implements FormDao {
    //通过email查id
    @Override
    public Object selectIdByEmail(String email) throws SQLException {
        String sql="select id from t_member where email=?";
        Object id = this.getSingleValue(DataSourceUtils.getConnection(),sql, email);
        return id;
    }
    //通过email查询发起人真实姓名
    @Override
    public String selectRealNameByEmail(String email) throws SQLException {
        String sql="select realname from t_member where email=?";
        String realname = (String) this.getSingleValue(DataSourceUtils.getConnection(),sql, email);
        return realname;
    }

    //项目插入
    @Override
    public int insertProject(Items items) throws Exception {
        String sql="insert into t_project values(default,?,?,?,?,'0',CURRENT_DATE(),0,0,0,?,CURRENT_DATE(),?,null,?)";//第四个0发起人
        int i = this.update(DataSourceUtils.getConnection(),sql, items.getName(), items.getRemark(), items.getMoney(), items.getDay(),items.getMemberid(), items.getPimgs(), items.getCid());
        return i;
    }

    //通过项目名字查询项目id
    @Override
    public Integer selectIdByProjectName(String projectName) throws SQLException {
        String sql="select id from t_project where name = ?";
        Integer id = (Integer) this.getSingleValue(DataSourceUtils.getConnection(),sql, projectName);
        return id;
    }

}
