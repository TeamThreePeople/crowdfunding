package com.team.cf.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;


public class Orders {


    private int id;//
    private int memberid;//会员ID
    private int projectid;//项目ID
    private int returnid;//回报ID
    private String ordernum;//订单编号
    private Date createdate;// 创建时间
    private double money;// 支持金额
    private int   rtncount;// 回报数量
    private int status;//0 -未支付，1 -已支付
    private String name;//收货人
    private String phone;//手机
    private String  address;//收货地址
    private int  invoice;//0 -不开发票，1一开发票
    private String invoictitle;//发票抬头
    private String remark;// 备注

    private Items items;

    //一对多  关联订单明细
    private List<Items> ordersItemList = new ArrayList<>();


    public Orders() {
    }

    public Orders(int id, int memberid, int projectid, int returnid, String ordernum, Date createdate, double money, int rtncount, int status, String name, String phone, String address, int invoice, String invoictitle, String remark, Items items, List<Items> ordersItemList) {
        this.id = id;
        this.memberid = memberid;
        this.projectid = projectid;
        this.returnid = returnid;
        this.ordernum = ordernum;
        this.createdate = createdate;
        this.money = money;
        this.rtncount = rtncount;
        this.status = status;
        this.name = name;
        this.phone = phone;
        this.address = address;
        this.invoice = invoice;
        this.invoictitle = invoictitle;
        this.remark = remark;
        this.items = items;
        this.ordersItemList = ordersItemList;
    }

    /**
     * 获取
     * @return id
     */
    public int getId() {
        return id;
    }

    /**
     * 设置
     * @param id
     */
    public void setId(int id) {
        this.id = id;
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
     * @return projectid
     */
    public int getProjectid() {
        return projectid;
    }

    /**
     * 设置
     * @param projectid
     */
    public void setProjectid(int projectid) {
        this.projectid = projectid;
    }

    /**
     * 获取
     * @return returnid
     */
    public int getReturnid() {
        return returnid;
    }

    /**
     * 设置
     * @param returnid
     */
    public void setReturnid(int returnid) {
        this.returnid = returnid;
    }

    /**
     * 获取
     * @return ordernum
     */
    public String getOrdernum() {
        return ordernum;
    }

    /**
     * 设置
     * @param ordernum
     */
    public void setOrdernum(String ordernum) {
        this.ordernum = ordernum;
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
     * @return rtncount
     */
    public int getRtncount() {
        return rtncount;
    }

    /**
     * 设置
     * @param rtncount
     */
    public void setRtncount(int rtncount) {
        this.rtncount = rtncount;
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
     * @return phone
     */
    public String getPhone() {
        return phone;
    }

    /**
     * 设置
     * @param phone
     */
    public void setPhone(String phone) {
        this.phone = phone;
    }

    /**
     * 获取
     * @return address
     */
    public String getAddress() {
        return address;
    }

    /**
     * 设置
     * @param address
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * 获取
     * @return invoice
     */
    public int getInvoice() {
        return invoice;
    }

    /**
     * 设置
     * @param invoice
     */
    public void setInvoice(int invoice) {
        this.invoice = invoice;
    }

    /**
     * 获取
     * @return invoictitle
     */
    public String getInvoictitle() {
        return invoictitle;
    }

    /**
     * 设置
     * @param invoictitle
     */
    public void setInvoictitle(String invoictitle) {
        this.invoictitle = invoictitle;
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
     * @return items
     */
    public Items getItems() {
        return items;
    }

    /**
     * 设置
     * @param items
     */
    public void setItems(Items items) {
        this.items = items;
    }

    /**
     * 获取
     * @return ordersItemList
     */
    public List<Items> getOrdersItemList() {
        return ordersItemList;
    }

    /**
     * 设置
     * @param ordersItemList
     */
    public void setOrdersItemList(List<Items> ordersItemList) {
        this.ordersItemList = ordersItemList;
    }

    public String toString() {
        return "Orders{id = " + id + ", memberid = " + memberid + ", projectid = " + projectid + ", returnid = " + returnid + ", ordernum = " + ordernum + ", createdate = " + createdate + ", money = " + money + ", rtncount = " + rtncount + ", status = " + status + ", name = " + name + ", phone = " + phone + ", address = " + address + ", invoice = " + invoice + ", invoictitle = " + invoictitle + ", remark = " + remark + ", items = " + items + ", ordersItemList = " + ordersItemList + "}";
    }
}
