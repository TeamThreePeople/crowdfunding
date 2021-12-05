package com.team.cf.entity;

/**
 * @version 1.0
 * @Description 订单明细信息
 * @Author chenmin
 * @Date 2021/12/3 9:33
 */
public class OrdersItem {

    //明细编号
    private String itemId;
    //商品的购买数量
    private int count;
    //小计
    private double subTotal;

    //一对一 关联商品信息
    private Items items;
    //一对一 关联订单信息
    private Orders orders;


    public OrdersItem() {
    }

    public OrdersItem(String itemId, int count, double subTotal, Items items, Orders orders) {
        this.itemId = itemId;
        this.count = count;
        this.subTotal = subTotal;
        this.items = items;
        this.orders = orders;
    }

    /**
     * 获取
     * @return itemId
     */
    public String getItemId() {
        return itemId;
    }

    /**
     * 设置
     * @param itemId
     */
    public void setItemId(String itemId) {
        this.itemId = itemId;
    }

    /**
     * 获取
     * @return count
     */
    public int getCount() {
        return count;
    }

    /**
     * 设置
     * @param count
     */
    public void setCount(int count) {
        this.count = count;
    }

    /**
     * 获取
     * @return subTotal
     */
    public double getSubTotal() {
        return subTotal;
    }

    /**
     * 设置
     * @param subTotal
     */
    public void setSubTotal(double subTotal) {
        this.subTotal = subTotal;
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
     * @return orders
     */
    public Orders getOrders() {
        return orders;
    }

    /**
     * 设置
     * @param orders
     */
    public void setOrders(Orders orders) {
        this.orders = orders;
    }

    public String toString() {
        return "OrdersItem{itemId = " + itemId + ", count = " + count + ", subTotal = " + subTotal + ", items = " + items + ", orders = " + orders + "}";
    }
}
