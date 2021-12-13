package com.team.cf.dao.impl;

import com.team.cf.dao.BaseDao;
import com.team.cf.dao.MemberDao;
import com.team.cf.entity.Member;
import com.team.cf.utils.DataSourceUtils;

import java.sql.SQLException;
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
        System.out.println("MemberDaoImpl selectOne 查询");
        String sql = "";
        if(params.length==1){
            sql = "select * from t_member where loginacct = ?";
        }else if(params.length==2){
            sql = "select * from t_member where loginacct = ? and userpswd = ?";
        }
        Member member = this.getBean(DataSourceUtils.getConnection(),sql, Member.class, params);

        System.out.println("member = "+ member);
        return member;
    }

    @Override
    public Member selectOneById(Integer id) throws Exception {
        System.out.println("MemberDaoImpl selectOneById 查询");
        String sql = "select *from t_member where id = ?";
        Member member = this.getBean(DataSourceUtils.getConnection(),sql, Member.class, id);
        System.out.println("member = "+ member);
        return member;
    }

    @Override
    public Member ConfirmOne(String loginacct, String userpswd) throws Exception {
        System.out.println("MemberDaoImpl 查询");
        String sql = "select * from t_member where loginacct = ? and userpswd = ?";
        Member member = this.getBean(DataSourceUtils.getConnection(),sql, Member.class, loginacct,userpswd);
        System.out.println("member = "+ member);
        return member;
    }

    //插入一个人
    @Override
    public int insertMember(Member member) throws Exception {
        String sql = "insert into t_member values(default,?,?,?,?,'0',?,?,?,?,?,?)";
        int i = this.update(DataSourceUtils.getConnection(),sql,
                member.getLoginacct(), member.getUserpswd(), member.getUsername(), member.getEmail(),
                member.getUsertype(), member.getRealname(), member.getCardnum(), member.getAccttype(),member.getPortrait(),member.getCode());
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

    //修改实名认证的状态 实名认证状态0一未实名认证，1 一已实名认证
    @Override
    public int updateMemberAuthStatus(String code) throws Exception {
        String sql = "update t_member set authstatus = 1 where code = ?";
        int i = this.update(DataSourceUtils.getConnection(), sql, code);
        return i;
    }

    //通过oid查询商品发起人
    @Override
    public Member findConsignorByOid(String oid) throws SQLException {
        String sql = "select u.*\n" +
                "from t_order o,t_project p,t_member u\n" +
                "where o.projectid = p.id and p.memberid = u.id\n" +
                "and o.ordernum = ? ";
        Member member = this.getBean(DataSourceUtils.getConnection(), sql, Member.class, oid);
        return member;
    }

    //通过oid查询收货人
    @Override
    public Member findConsigneeByOid(String oid) throws SQLException {
        String sql ="select u.*\n" +
                "from t_order o,t_member u\n" +
                "where o.memberid = u.id\n" +
                "and o.ordernum = ? ";
        Member member = this.getBean(DataSourceUtils.getConnection(), sql, Member.class, oid);
        return member;
    }

    //修改实名认证 信息
    @Override
    public int memberTrue(String realname, String accttype, String cardnum, String code, int memberid) throws SQLException {
        String sql = "update t_member set realname=? , accttype = ? ,cardnum = ? ,code = ? where id=? ";
        int i = this.update(DataSourceUtils.getConnection(), sql, realname, accttype, cardnum,code, memberid);
        return i;
    }
}
