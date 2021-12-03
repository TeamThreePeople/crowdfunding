package com.team.cf.entity;

/**
 * @Description 回报信息实体类
 * @Author 郝者伦
 * @Date 2021/12/2 21:51
 */
public class ProjectReturn {
    private Integer id;//
    private Integer projectid;//项目ID
    private String type;//0 -实物回报，1 虚拟物品回报
    private int supportmoney;//支持 金额
    private String content;//回报内容
    private Integer count;//0 为不限回报数量
    private Integer signalpurchase;// 单笔限购
    private Integer purchase;//限购数量
    private Integer freight;//运费
    private String invoice;//0 -不开发票，1 -开发票
    private Integer rtndate;//回报时间,众筹成功后多少天进行回报

    public ProjectReturn() {
    }

    public ProjectReturn(/*Integer projectid,*/ String type, int supportmoney, String content, Integer count, Integer signalpurchase, Integer freight, String invoice, Integer rtndate) {
        this.projectid = projectid;
        this.type = type;
        this.supportmoney = supportmoney;
        this.content = content;
        this.count = count;
        this.signalpurchase = signalpurchase;

        this.freight = freight;
        this.invoice = invoice;
        this.rtndate = rtndate;
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
     * @return projectid
     */
    public Integer getProjectid() {
        return projectid;
    }

    /**
     * 设置
     * @param projectid
     */
    public void setProjectid(Integer projectid) {
        this.projectid = projectid;
    }

    /**
     * 获取
     * @return type
     */
    public String getType() {
        return type;
    }

    /**
     * 设置
     * @param type
     */
    public void setType(String type) {
        this.type = type;
    }

    /**
     * 获取
     * @return supportmoney
     */
    public int getSupportmoney() {
        return supportmoney;
    }

    /**
     * 设置
     * @param supportmoney
     */
    public void setSupportmoney(int supportmoney) {
        this.supportmoney = supportmoney;
    }

    /**
     * 获取
     * @return content
     */
    public String getContent() {
        return content;
    }

    /**
     * 设置
     * @param content
     */
    public void setContent(String content) {
        this.content = content;
    }

    /**
     * 获取
     * @return count
     */
    public Integer getCount() {
        return count;
    }

    /**
     * 设置
     * @param count
     */
    public void setCount(Integer count) {
        this.count = count;
    }

    /**
     * 获取
     * @return signalpurchase
     */
    public Integer getSignalpurchase() {
        return signalpurchase;
    }

    /**
     * 设置
     * @param signalpurchase
     */
    public void setSignalpurchase(Integer signalpurchase) {
        this.signalpurchase = signalpurchase;
    }

    /**
     * 获取
     * @return purchase
     */
    public Integer getPurchase() {
        return purchase;
    }

    /**
     * 设置
     * @param purchase
     */
    public void setPurchase(Integer purchase) {
        this.purchase = purchase;
    }

    /**
     * 获取
     * @return freight
     */
    public Integer getFreight() {
        return freight;
    }

    /**
     * 设置
     * @param freight
     */
    public void setFreight(Integer freight) {
        this.freight = freight;
    }

    /**
     * 获取
     * @return invoice
     */
    public String getInvoice() {
        return invoice;
    }

    /**
     * 设置
     * @param invoice
     */
    public void setInvoice(String invoice) {
        this.invoice = invoice;
    }

    /**
     * 获取
     * @return rtndate
     */
    public Integer getRtndate() {
        return rtndate;
    }

    /**
     * 设置
     * @param rtndate
     */
    public void setRtndate(Integer rtndate) {
        this.rtndate = rtndate;
    }

    public String toString() {
        return "ProjectReturn{id = " + id + ", projectid = " + projectid + ", type = " + type + ", supportmoney = " + supportmoney + ", content = " + content + ", count = " + count + ", signalpurchase = " + signalpurchase + ", purchase = " + purchase + ", freight = " + freight + ", invoice = " + invoice + ", rtndate = " + rtndate + "}";
    }
}
