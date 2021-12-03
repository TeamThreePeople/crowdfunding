package com.team.cf.dao;


import com.team.cf.entity.Member;

import java.util.List;

public interface MemberDao {

    //查询所有用户
    public List<Member> selectAll(Object... params) throws Exception;

    //查单个
    public Member selectOne(Object... params) throws Exception;

    //查单个 by id
    public Member selectOneById(Integer id) throws Exception;

    //增
    public int insertMember(Member member) throws Exception;

    //删
    public int deleteMember(Member member) throws Exception;

    //改
    public int updateMember(Member member) throws Exception;

    //改实名认证状态
    public int updateMemberAuthStatus(Member member) throws Exception;
}
