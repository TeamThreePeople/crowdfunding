package com.team.cf.dao.impl;

import com.team.cf.dao.BaseDao;
import com.team.cf.dao.FormDao;
import com.team.cf.entity.Items;
import com.team.cf.entity.Member;
import com.team.cf.entity.ProjectReturn;
import com.team.cf.utils.DataSourceUtils;

import java.sql.SQLException;

/**
 * @Description TODO
 * @Author 郝者伦
 * @Date 2021/12/1 22:38
 */
public class FormDaoImpl extends BaseDao<Member> implements FormDao {
    //通过账户查id（关联项目）
    @Override
    public Object selectIdByLoginAcct(String loginacct) throws SQLException {
        String sql="select id from t_member where loginacct=?";
        Object id = this.getSingleValue(DataSourceUtils.getConnection(),sql, loginacct);
        return id;
    }
    //通过email查询发起人真实姓名
    @Override
    public String selectRealNameByEmail(String email) throws SQLException {
        String sql="select realname from t_member where email=?";
        String realname = (String) this.getSingleValue(DataSourceUtils.getConnection(),sql, email);
        return realname;
    }
    //是否有此人
    @Override
    public Member selectOneByEmailAndLoginAcct(String email, String loginacct) throws SQLException {
        String sql="select * from t_member where email=? and loginacct=?";
        Member member = (Member) this.getBean(DataSourceUtils.getConnection(),sql, Member.class, email, loginacct);
        System.out.println(member);
        return member;
    }

    //项目插入
    @Override
    public int insertProject(Items items) throws Exception {
        String sql="insert into t_project values(default,?,?,?,?,'0',CURRENT_DATE(),0,0,0,?,CURRENT_DATE(),?,null,?)";//第四个0发起人
        int i = this.update(DataSourceUtils.getConnection(),sql, items.getName(), items.getRemark(), items.getMoney(), items.getDay(),items.getMemberid(), items.getPimgs(), items.getCid());
        return i;
    }

    //删除项目(上一步)
    @Override
    public int delProjectForm(int pid) throws SQLException {
        String sql = "delete from t_project where id = ?";
        int i = this.update(DataSourceUtils.getConnection(), sql, pid);
        return i;
    }

    /*//插入回报
    @Override
    public int insertProjectReturn(ProjectReturn pr) throws SQLException {
        String sql="insert into t_return values";
        return 0;
    }*/

    //通过项目名字查询项目id(关联回报)
    @Override
    public Integer selectIdByProjectName(String projectName) throws SQLException {
        String sql="select id from t_project where name = ?";
        Integer id = (Integer) this.getSingleValue(DataSourceUtils.getConnection(),sql, projectName);
        return id;
    }
    //用于校验项目名是否冲突
    @Override
    public Items selectOne(Object... params) throws Exception {
        String sql="select * from t_project where name=?";
        //Items items = (Items)this.getBean(DataSourceUtils.getConnection(),sql, Items.class, params);
        //return items;
        return null;
    }



}
