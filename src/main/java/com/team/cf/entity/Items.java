package com.team.cf.entity;

import java.util.Date;

/**
 * @Description TODO
 * @Author shejiatao
 * @Date 2021/11/29 16:01
 */
public class Items {

    private Integer id;
    private String name;//项目名称
    private String remark;//项目简介
    private Double money;//筹资金额
    private int day;//筹资天数
    private int status;//0 -即将开始，1 -众筹中，2 -众筹成功，3 -众筹失败
    private Date deploydate;// 发布日期
    private Double supportmoney;//支持金额
    private int supporter;// 支持者数量
    private int completion;//完成度
    private int memberid;// 发起人ID
    private Date createdate;// 创建日期
    private int follower;//关注者数量

    private String pimgs;//图片
    private int cid;//商品分类id



    public Items() {
    }

    public Items(Integer id, String name, String remark, Double money, int day, int status, Date deploydate, Double supportmoney, int supporter, int completion, int memberid, Date createdate, int follower, String pimgs, int cid) {
        this.id = id;
        this.name = name;
        this.remark = remark;
        this.money = money;
        this.day = day;
        this.status = status;
        this.deploydate = deploydate;
        this.supportmoney = supportmoney;
        this.supporter = supporter;
        this.completion = completion;
        this.memberid = memberid;
        this.createdate = createdate;
        this.follower = follower;
        this.pimgs = pimgs;
        this.cid = cid;
    }

    public Items(String name, String remark, Double money, int day, int cid) {

        this.name = name;
        this.remark = remark;
        this.money = money;
        this.day = day;
        this.cid = cid;
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
     * @return name
     */
    public String getName() {
        return name;
    }

    /**
     * 设置
     * @param name
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 获取
     * @return remark
     */
    public String getRemark() {
        return remark;
    }

    /**
     * 设置
     * @param remark
     */
    public void setRemark(String remark) {
        this.remark = remark;
    }

    /**
     * 获取
     * @return money
     */
    public Double getMoney() {
        return money;
    }

    /**
     * 设置
     * @param money
     */
    public void setMoney(Double money) {
        this.money = money;
    }

    /**
     * 获取
     * @return day
     */
    public int getDay() {
        return day;
    }

    /**
     * 设置
     * @param day
     */
    public void setDay(int day) {
        this.day = day;
    }

    /**
     * 获取
     * @return status
     */
    public int getStatus() {
        return status;
    }

    /**
     * 设置
     * @param status
     */
    public void setStatus(int status) {
        this.status = status;
    }

    /**
     * 获取
     * @return deploydate
     */
    public Date getDeploydate() {
        return deploydate;
    }

    /**
     * 设置
     * @param deploydate
     */
    public void setDeploydate(Date deploydate) {
        this.deploydate = deploydate;
    }

    /**
     * 获取
     * @return supportmoney
     */
    public Double getSupportmoney() {
        return supportmoney;
    }

    /**
     * 设置
     * @param supportmoney
     */
    public void setSupportmoney(Double supportmoney) {
        this.supportmoney = supportmoney;
    }

    /**
     * 获取
     * @return supporter
     */
    public int getSupporter() {
        return supporter;
    }

    /**
     * 设置
     * @param supporter
     */
    public void setSupporter(int supporter) {
        this.supporter = supporter;
    }

    /**
     * 获取
     * @return completion
     */
    public int getCompletion() {
        return completion;
    }

    /**
     * 设置
     * @param completion
     */
    public void setCompletion(int completion) {
        this.completion = completion;
    }

    /**
     * 获取
     * @return memberid
     */
    public int getMemberid() {
        return memberid;
    }

    /**
     * 设置
     * @param memberid
     */
    public void setMemberid(int memberid) {
        this.memberid = memberid;
    }

    /**
     * 获取
     * @return createdate
     */
    public Date getCreatedate() {
        return createdate;
    }

    /**
     * 设置
     * @param createdate
     */
    public void setCreatedate(Date createdate) {
        this.createdate = createdate;
    }

    /**
     * 获取
     * @return follower
     */
    public int getFollower() {
        return follower;
    }

    /**
     * 设置
     * @param follower
     */
    public void setFollower(int follower) {
        this.follower = follower;
    }

    /**
     * 获取
     * @return pimgs
     */
    public String getPimgs() {
        return pimgs;
    }

    /**
     * 设置
     * @param pimgs
     */
    public void setPimgs(String pimgs) {
        this.pimgs = pimgs;
    }

    /**
     * 获取
     * @return cid
     */
    public int getCid() {
        return cid;
    }

    /**
     * 设置
     * @param cid
     */
    public void setCid(int cid) {
        this.cid = cid;
    }

    public String toString() {
        return "Items{id = " + id + ", name = " + name + ", remark = " + remark + ", money = " + money + ", day = " + day + ", status = " + status + ", deploydate = " + deploydate + ", supportmoney = " + supportmoney + ", supporter = " + supporter + ", completion = " + completion + ", memberid = " + memberid + ", createdate = " + createdate + ", follower = " + follower + ", pimgs = " + pimgs + ", cid = " + cid + "}";
    }
}
