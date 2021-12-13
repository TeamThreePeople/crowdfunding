package com.team.cf.entity;

/**
 * @Description TODO
 * @Author shejiatao
 * @Date 2021/12/9 15:35
 */
public class Packages {

    private String oid;//运单号
    private Member consignor;//发件人
    private Member consignee;//收件人
    private Items product;//商品


    public Packages() {
    }

    public Packages(String oid, Member consignor, Member consignee, Items product) {
        this.oid = oid;
        this.consignor = consignor;
        this.consignee = consignee;
        this.product = product;
    }

    /**
     * 获取
     * @return oid
     */
    public String getOid() {
        return oid;
    }

    /**
     * 设置
     * @param oid
     */
    public void setOid(String oid) {
        this.oid = oid;
    }

    /**
     * 获取
     * @return consignor
     */
    public Member getConsignor() {
        return consignor;
    }

    /**
     * 设置
     * @param consignor
     */
    public void setConsignor(Member consignor) {
        this.consignor = consignor;
    }

    /**
     * 获取
     * @return consignee
     */
    public Member getConsignee() {
        return consignee;
    }

    /**
     * 设置
     * @param consignee
     */
    public void setConsignee(Member consignee) {
        this.consignee = consignee;
    }

    /**
     * 获取
     * @return product
     */
    public Items getProduct() {
        return product;
    }

    /**
     * 设置
     * @param product
     */
    public void setProduct(Items product) {
        this.product = product;
    }

    public String toString() {
        return "packages{oid = " + oid + ", consignor = " + consignor + ", consignee = " + consignee + ", product = " + product + "}";
    }
}
