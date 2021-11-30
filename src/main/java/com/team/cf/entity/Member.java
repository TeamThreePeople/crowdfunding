package com.team.cf.entity;

/**
 * @Description TODO
 * @Author chenJunYu
 * @Date 2021/11/29 19:49
 */
public class Member {
    private Integer id;
    private String loginacct;  // 登录账号
    private String userpswd;    // 登录密码
    private String username;    //用户名称
    private String email;       //电子邮箱
    private String authstatus;  //实名认证状态0一未实名认证，1 -实名认证申请中，| 2一已实名认证
    private String usertype;    //用户类型: 0一个人，1 一企业
    private String realname;    // 真实名称
    private String cardnum;     // 身份证号码
    private String accttype;    //账户类型:0-企业，1-个体，2-个人，3-政府


    public Member() {
    }

    public Member(String loginacct, String userpswd, String email) {
        this.loginacct = loginacct;
        this.userpswd = userpswd;
        this.email = email;
    }

    public Member(Integer id, String loginacct, String userpswd, String username, String email, String authstatus, String usertype, String realname, String cardnum, String accttype) {
        this.id = id;
        this.loginacct = loginacct;
        this.userpswd = userpswd;
        this.username = username;
        this.email = email;
        this.authstatus = authstatus;
        this.usertype = usertype;
        this.realname = realname;
        this.cardnum = cardnum;
        this.accttype = accttype;
    }

    /**
     * 获取
     * @return id
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置
     * @param id
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取
     * @return loginacct
     */
    public String getLoginacct() {
        return loginacct;
    }

    /**
     * 设置
     * @param loginacct
     */
    public void setLoginacct(String loginacct) {
        this.loginacct = loginacct;
    }

    /**
     * 获取
     * @return userpswd
     */
    public String getUserpswd() {
        return userpswd;
    }

    /**
     * 设置
     * @param userpswd
     */
    public void setUserpswd(String userpswd) {
        this.userpswd = userpswd;
    }

    /**
     * 获取
     * @return username
     */
    public String getUsername() {
        return username;
    }

    /**
     * 设置
     * @param username
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * 获取
     * @return email
     */
    public String getEmail() {
        return email;
    }

    /**
     * 设置
     * @param email
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * 获取
     * @return authstatus
     */
    public String getAuthstatus() {
        return authstatus;
    }

    /**
     * 设置
     * @param authstatus
     */
    public void setAuthstatus(String authstatus) {
        this.authstatus = authstatus;
    }

    /**
     * 获取
     * @return usertype
     */
    public String getUsertype() {
        return usertype;
    }

    /**
     * 设置
     * @param usertype
     */
    public void setUsertype(String usertype) {
        this.usertype = usertype;
    }

    /**
     * 获取
     * @return realname
     */
    public String getRealname() {
        return realname;
    }

    /**
     * 设置
     * @param realname
     */
    public void setRealname(String realname) {
        this.realname = realname;
    }

    /**
     * 获取
     * @return cardnum
     */
    public String getCardnum() {
        return cardnum;
    }

    /**
     * 设置
     * @param cardnum
     */
    public void setCardnum(String cardnum) {
        this.cardnum = cardnum;
    }

    /**
     * 获取
     * @return accttype
     */
    public String getAccttype() {
        return accttype;
    }

    /**
     * 设置
     * @param accttype
     */
    public void setAccttype(String accttype) {
        this.accttype = accttype;
    }

    public String toString() {
        return "Member{id = " + id + ", loginacct = " + loginacct + ", userpswd = " + userpswd + ", username = " + username + ", email = " + email + ", authstatus = " + authstatus + ", usertype = " + usertype + ", realname = " + realname + ", cardnum = " + cardnum + ", accttype = " + accttype + "}";
    }
}
