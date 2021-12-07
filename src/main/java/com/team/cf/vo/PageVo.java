package com.team.cf.vo;

import java.util.List;

/**
 * @Description TODO
 * @Author shejiatao
 * @Date 2021/11/25 19:28
 */
public class PageVo<T> {
    //当前页
    private Integer pageNow;
    //总记录数
    private Integer myCounts;
    //总页数
    private Integer myPages;
    //查询条件
    private String query1;
    private String query2;
    private String query3;
    private String query4;
    //数据
    private List<T> list;


    public PageVo() {
    }

    public PageVo(Integer pageNow, Integer myPages,  Integer myCounts, String query1, String query2, String query3, String query4, List<T> list) {
        this.pageNow = pageNow;
        this.myCounts = myCounts;
        this.myPages = myPages;
        this.query1 = query1;
        this.query2 = query2;
        this.query3 = query3;
        this.query4 = query4;
        this.list = list;
    }

    /**
     * 获取
     * @return pageNow
     */
    public Integer getPageNow() {
        return pageNow;
    }

    /**
     * 设置
     * @param pageNow
     */
    public void setPageNow(Integer pageNow) {
        this.pageNow = pageNow;
    }

    /**
     * 获取
     * @return myCounts
     */
    public Integer getMyCounts() {
        return myCounts;
    }

    /**
     * 设置
     * @param myCounts
     */
    public void setMyCounts(Integer myCounts) {
        this.myCounts = myCounts;
    }

    /**
     * 获取
     * @return myPages
     */
    public Integer getMyPages() {
        return myPages;
    }

    /**
     * 设置
     * @param myPages
     */
    public void setMyPages(Integer myPages) {
        this.myPages = myPages;
    }

    /**
     * 获取
     * @return query1
     */
    public String getQuery1() {
        return query1;
    }

    /**
     * 设置
     * @param query1
     */
    public void setQuery1(String query1) {
        this.query1 = query1;
    }

    /**
     * 获取
     * @return query2
     */
    public String getQuery2() {
        return query2;
    }

    /**
     * 设置
     * @param query2
     */
    public void setQuery2(String query2) {
        this.query2 = query2;
    }

    /**
     * 获取
     * @return query3
     */
    public String getQuery3() {
        return query3;
    }

    /**
     * 设置
     * @param query3
     */
    public void setQuery3(String query3) {
        this.query3 = query3;
    }

    /**
     * 获取
     * @return query4
     */
    public String getQuery4() {
        return query4;
    }

    /**
     * 设置
     * @param query4
     */
    public void setQuery4(String query4) {
        this.query4 = query4;
    }

    /**
     * 获取
     * @return list
     */
    public List<T> getList() {
        return list;
    }

    /**
     * 设置
     * @param list
     */
    public void setList(List<T> list) {
        this.list = list;
    }

    public String toString() {
        return "PageVo{pageNow = " + pageNow + ", myCounts = " + myCounts + ", myPages = " + myPages + ", query1 = " + query1 + ", query2 = " + query2 + ", query3 = " + query3 + ", query4 = " + query4 + ", list = " + list + "}";
    }
}
