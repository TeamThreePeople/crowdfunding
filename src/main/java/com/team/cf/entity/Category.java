package com.team.cf.entity;

/**
 * @Description 项目标签分类
 * @Author shejiatao
 * @Date 2021/11/30 19:48
 */
public class Category {

    private Integer cid;//id
    private String cname;//分类名
    private String remark;//描述


    public Category() {
    }

    public Category(Integer cid, String cname, String remark) {
        this.cid = cid;
        this.cname = cname;
        this.remark = remark;
    }

    /**
     * 获取
     * @return cid
     */
    public Integer getCid() {
        return cid;
    }

    /**
     * 设置
     * @param cid
     */
    public void setCid(Integer cid) {
        this.cid = cid;
    }

    /**
     * 获取
     * @return cname
     */
    public String getCname() {
        return cname;
    }

    /**
     * 设置
     * @param cname
     */
    public void setCname(String cname) {
        this.cname = cname;
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

    public String toString() {
        return "Category{cid = " + cid + ", cname = " + cname + ", remark = " + remark + "}";
    }
}
