package com.team.cf.entity;

/**
 * @Description TODO
 * @Author shejiatao
 * @Date 2021/12/1 21:13
 */
public class Orderby {

    private Integer oid;
    private String oname;


    public Orderby() {
    }

    public Orderby(Integer oid, String oname) {
        this.oid = oid;
        this.oname = oname;
    }

    /**
     * 获取
     * @return oid
     */
    public Integer getOid() {
        return oid;
    }

    /**
     * 设置
     * @param oid
     */
    public void setOid(Integer oid) {
        this.oid = oid;
    }

    /**
     * 获取
     * @return oname
     */
    public String getOname() {
        return oname;
    }

    /**
     * 设置
     * @param oname
     */
    public void setOname(String oname) {
        this.oname = oname;
    }

    public String toString() {
        return "Orderby{oid = " + oid + ", oname = " + oname + "}";
    }
}
