package com.team.cf.dao;


import com.team.cf.entity.Member;

import java.sql.SQLException;
import java.util.List;

public interface MemberDao {

    //查询所有用户
    public List<Member> selectAll(Object... params) throws Exception;

    //查单个
    public Member selectOne(Object... params) throws Exception;


    //查单个
    public Member ConfirmOne(String loginacct, String userpswd) throws Exception;

    //查单个 by id
    public Member selectOneById(Integer id) throws Exception;

    //增
    public int insertMember(Member member) throws Exception;

    //删
    public int deleteMember(Member member) throws Exception;

    //改
    public int updateMember(Member member) throws Exception;

    //改实名认证状态
    public int updateMemberAuthStatus(String code) throws Exception;

    //通过oid查询商品发起人
    public Member findConsignorByOid(String oid) throws SQLException;

    //通过oid查询收货人
    public Member findConsigneeByOid(String oid) throws SQLException;

    //修改实名认证 信息
    public int memberTrue(String realname ,String accttype,String cardnum,String code,int memberid) throws SQLException;

}
