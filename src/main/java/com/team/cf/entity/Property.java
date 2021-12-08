package com.team.cf.entity;

/**
 * @Description 资产分析
 * @Author shejiatao
 * @Date 2021/12/7 21:08
 */
public class Property {

    private double money;//总钱数
    private int cid;//分类id
    private String cname;//分类名

    public Property() {
    }

    public Property(double money, int cid, String cname) {
        this.money = money;
        this.cid = cid;
        this.cname = cname;
    }

    /**
     * 获取
     * @return money
     */
    public double getMoney() {
        return money;
    }

    /**
     * 设置
     * @param money
     */
    public void setMoney(double money) {
        this.money = money;
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

    public String toString() {
        return "Property{money = " + money + ", cid = " + cid + ", cname = " + cname + "}";
    }
    /*private double kjMoney;
    private double gyMoney;
    private double nyMoney;
    private double whMoney;
*/


}
