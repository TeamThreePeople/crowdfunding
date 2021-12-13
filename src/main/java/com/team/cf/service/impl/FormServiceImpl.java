package com.team.cf.service.impl;

import com.team.cf.dao.impl.FormDaoImpl;
import com.team.cf.entity.Items;
import com.team.cf.entity.Member;
import com.team.cf.entity.ProjectReturn;
import com.team.cf.service.FormService;
import com.team.cf.utils.DataSourceUtils;
import com.team.cf.utils.JDBCUtils;

import java.sql.SQLException;

/**
 * @Description 发起项目表单填写
 * @Author 郝者伦
 * @Date 2021/12/1 22:33
 */
public class FormServiceImpl implements FormService {

    private FormDaoImpl dao=new FormDaoImpl();

    //注册项目信息
    @Override
    public boolean registerProjectForm(Items items) {
        try {
            int i = dao.insertProject(items);
            //dao.selectIdByProjectName(items.getName());
            return i>0?true:false;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                DataSourceUtils.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return false;

    }

    //通过账户查询用户id（关联项目）
    @Override
    public Object selectIdByLoginAcct(String loginacct) {
        Object id=null;
        try {
            id = dao.selectIdByLoginAcct(loginacct);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                DataSourceUtils.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return id;
    }


   /* @Override
    public Object selectIdByEmail(String email) {
        Object id = null;
        try {
            id = dao.selectIdByEmail(email);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                DataSourceUtils.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return id;
    }*/

    //通过email查询发起人真实姓名
    @Override
    public String selectRealNameByEmail(String email) {
        String realname=null;
        try {
            realname = dao.selectRealNameByEmail(email);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                DataSourceUtils.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return realname;
    }

    //删除项目
    @Override
    public boolean delProjectForm(int pid) {
        try {
            int i = dao.delProjectForm(pid);
            return i>0?true:false;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            try {
                DataSourceUtils.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return false;
    }

    //通过项目名字查询项目id(关联回报)
    @Override
    public int selectIdByProjectName(String name) {
        Integer id=0;
        try {
            id = dao.selectIdByProjectName(name);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                DataSourceUtils.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return id;
    }
    //通过账户和邮箱查询有没有这个人
    @Override
    public Member selectOneByEmailAndLoginAcct(String email, String loginacct) {

        try {
            Member  member = dao.selectOneByEmailAndLoginAcct(email, loginacct);
            return member;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                DataSourceUtils.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return null;
    }
    //校验项目名是否冲突
    @Override
    public Boolean validateProjectName(String name) {
        try {
            Items items = dao.selectOne(name);
            return items!=null;//true 不可插 false 可插
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                DataSourceUtils.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return false;
    }

}
