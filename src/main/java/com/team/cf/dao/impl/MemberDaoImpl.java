package com.team.cf.dao.impl;

import com.team.cf.dao.BaseDao;
import com.team.cf.dao.MemberDao;
import com.team.cf.entity.Member;

import java.util.List;

/**
 * @Description TODO
 * @Author chenJunYu
 * @Date 2021/11/29 20:08
 */
public class MemberDaoImpl extends BaseDao<Member> implements MemberDao {
    @Override
    public List<Member> selectAll(Object... params) throws Exception {
        return null;
    }

    @Override
    public Member selectOne(Object... params) throws Exception {
        System.out.println("MemberDaoImpl 查询");
        String sql = "select * from t_member where loginacct = ?";
        Member member = this.getBean(sql, Member.class, params);
        System.out.println("member = "+ member);
        return member;
    }

    //插入一个人
    @Override
    public int insertMember(Member member) throws Exception {
        System.out.println("MemberDaoImpl 插入");
        String sql = "insert into t_member values(default,?,?,?,?,0,?,?,?,?)";
        int i = this.update(sql,
                member.getLoginacct(), member.getUserpswd(), member.getUsername(), member.getEmail(),
                member.getUsertype(), member.getRealname(), member.getCardnum(), member.getAccttype());
        System.out.println("MemberDaoImpl 中 insertMember 的 i = "+i);
        return i;
    }

    @Override
    public int deleteMember(Member member) throws Exception {
        return 0;
    }

    @Override
    public int updateMember(Member member) throws Exception {
        return 0;
    }

    //修改实名认证的状态 实名认证状态0一未实名认证，1 -实名认证申请中，| 2一已实名认证
    @Override
    public int updateMemberAuthStatus(Member member) throws Exception {
        String sql = "update t_member set authstatus = ？ where ";
        return 0;
    }
}
