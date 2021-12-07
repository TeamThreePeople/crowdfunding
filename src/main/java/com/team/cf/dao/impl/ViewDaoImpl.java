package com.team.cf.dao.impl;

import com.team.cf.dao.BaseDao;
import com.team.cf.dao.ViewDao;
import com.team.cf.entity.Items;
import com.team.cf.entity.View;
import com.team.cf.utils.DataSourceUtils;

import java.sql.SQLException;

/**
 * @Description TODO
 * @Author chenJunYu
 * @Date 2021/12/7 22:06
 */
public class ViewDaoImpl extends BaseDao<View> implements ViewDao {
    //查找浏览情况
    @Override
    public View selectViewByprojectidAndmemberid(int projectid, int memberid) throws SQLException {
        String sql = "select * from t_member_project_view where projectid = ? and memberid = ?";
        View view = this.getBean(DataSourceUtils.getConnection(), sql, View.class, projectid, memberid);
        return null;
    }

    //点击商品 添加
    @Override
    public int addViewItem(int projectid, int memberid) throws SQLException {
        String sql = "insert into t_member_project_view values(default,?,?)";
        int i = this.update(DataSourceUtils.getConnection(), sql, projectid, memberid);
        return i;
    }

    //点击商品 删除
    @Override
    public int deleteViewItem(int projectid, int memberid) throws SQLException {
        String sql = "delete from t_member_project_view where projectid = ? and memberid = ?";
        int i = this.update(DataSourceUtils.getConnection(),sql,projectid,memberid);
        return i;
    }
}
