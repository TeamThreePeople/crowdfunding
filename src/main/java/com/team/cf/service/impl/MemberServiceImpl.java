package com.team.cf.service.impl;

import com.team.cf.dao.MemberDao;
import com.team.cf.dao.impl.MemberDaoImpl;
import com.team.cf.entity.Member;
import com.team.cf.service.MemberService;
import com.team.cf.utils.JDBCUtils;


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
            JDBCUtils.close();
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
            JDBCUtils.close();
        }
        return false;
    }

    //登陆
    @Override
    public Member login(String name, String pwd) {
        return null;
    }
}
