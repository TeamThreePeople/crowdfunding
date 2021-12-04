package com.team.cf.entity;

/**
 * @Description 关注情况
 * @Author chenJunYu
 * @Date 2021/12/2 15:23
 */
public class Great {
    //
    private Integer id;
    //商品id
    private Integer aid;
    //用户id
    private Integer uid;


    public Great() {
    }

    public Great(Integer id, Integer aid, Integer uid) {
        this.id = id;
        this.aid = aid;
        this.uid = uid;
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
     * @return aid
     */
    public Integer getAid() {
        return aid;
    }

    /**
     * 设置
     * @param aid
     */
    public void setAid(Integer aid) {
        this.aid = aid;
    }

    /**
     * 获取
     * @return uid
     */
    public Integer getUid() {
        return uid;
    }

    /**
     * 设置
     * @param uid
     */
    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String toString() {
        return "Great{id = " + id + ", aid = " + aid + ", uid = " + uid + "}";
    }
}
