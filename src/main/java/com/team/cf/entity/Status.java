package com.team.cf.entity;

/**
 * @Description 状态菜单
 * @Author shejiatao
 * @Date 2021/12/1 21:12
 */
public class Status {

    private Integer sid;
    private String sname;


    public Status() {
    }

    public Status(Integer sid, String sname) {
        this.sid = sid;
        this.sname = sname;
    }

    /**
     * 获取
     * @return sid
     */
    public Integer getSid() {
        return sid;
    }

    /**
     * 设置
     * @param sid
     */
    public void setSid(Integer sid) {
        this.sid = sid;
    }

    /**
     * 获取
     * @return sname
     */
    public String getSname() {
        return sname;
    }

    /**
     * 设置
     * @param sname
     */
    public void setSname(String sname) {
        this.sname = sname;
    }

    public String toString() {
        return "Status{sid = " + sid + ", sname = " + sname + "}";
    }
}
