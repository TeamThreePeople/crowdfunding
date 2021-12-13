package com.team.cf.service;


import com.team.cf.entity.Member;

/**
 * @Description TODO
 * @Author chenJunYu
 * @Date 2021/11/29 11:09
 */
public interface MemberService {

    //注册
    public boolean register(Member member);

    //激活
    //public boolean active(String code);

    //校验
    public boolean validateName(String loginacct);

    //登陆

    //用户名与密码是否匹配
    public Member confirm(String loginacct,String userpswd);

    public Member login(String username,String userpswd);

    //个人中心信息
    public Member findMemberById(Integer id);

    //通过oid查询商品发起人
    public Member findConsignorByOid(String oid);

    //通过oid查询收货人
    public Member findConsigneeByOid(String oid);

    //修改实名认证 信息
    public boolean memberTrue(String realname ,String accttype,String cardnum,String code,int memberid);

    //改实名认证状态
    public boolean updateMemberAuthStatus(String code);

}
