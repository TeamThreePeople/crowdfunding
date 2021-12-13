package com.team.cf.service.impl;

import com.team.cf.dao.MemberDao;
import com.team.cf.dao.impl.MemberDaoImpl;
import com.team.cf.entity.Member;
import com.team.cf.service.MemberService;
import com.team.cf.utils.DataSourceUtils;
import com.team.cf.utils.JDBCUtils;

import java.sql.SQLException;


/**
 * @Description TODO
 * @Author chenJunYu
 * @Date 2021/11/29 11:11
 */
public class MemberServiceImpl implements MemberService {

    private MemberDao dao = new MemberDaoImpl();

    //注册
    @Override
    public boolean register(Member member) {
        System.out.println("MemberServiceImpl 注册");
        try {
            int i = dao.insertMember(member);
            return i>0;
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            try {
                DataSourceUtils.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return false;
    }

//    //激活
//    @Override
//    public boolean active(String code) {
//        return false;
//    }

    //校验
    @Override
    public boolean validateName(String loginacct) {
        System.out.println("MemberServiceImpl 校验名字loginacct");
        try {
            Member member = dao.selectOne(loginacct);
            System.out.println("member = " +member);
            return member!=null;
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            try {
                DataSourceUtils.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    //登录
    @Override
    public Member login(String loginacct, String password) {
        try {
            Member member = dao.selectOne(loginacct, password);
            return member;
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            try {
                DataSourceUtils.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    //通过id找人
    @Override
    public Member findMemberById(Integer id) {
        try {
            Member member = dao.selectOneById(id);
            return member;
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            try {
                DataSourceUtils.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return null;
    }

    //校验账户与密码是否匹配
    @Override
    public Member confirm(String loginacct, String userpswd) {
        Member member = null;
        try {
            member = dao.ConfirmOne(loginacct, userpswd);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                DataSourceUtils.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return member;
    }

    //通过oid查询商品发起人
    @Override
    public Member findConsignorByOid(String oid) {
        try {
            Member consignor = dao.findConsignorByOid(oid);
            return consignor;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            try {
                DataSourceUtils.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    //通过oid查询收货人
    @Override
    public Member findConsigneeByOid(String oid) {
        try {
            Member consignee = dao.findConsigneeByOid(oid);
            return consignee;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            try {
                DataSourceUtils.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    //修改实名认证 信息
    @Override
    public boolean memberTrue(String realname, String accttype, String cardnum,String code, int memberid) {
        try {
            int i = dao.memberTrue(realname, accttype, cardnum,code, memberid);
            return i>0;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            try {
                DataSourceUtils.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    @Override
    public boolean updateMemberAuthStatus(String code) {
        try {
            int i = dao.updateMemberAuthStatus(code);
            return i>0;
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            try {
                DataSourceUtils.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return false;
    }

}
