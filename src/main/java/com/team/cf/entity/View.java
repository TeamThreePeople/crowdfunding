package com.team.cf.entity;

/**
 * @Description TODO
 * @Author chenJunYu
 * @Date 2021/12/7 22:00
 */
public class View {

    private Integer id;
    //商品id
    private Integer projectid;
    //用户id
    private Integer memberid;


    public View() {
    }

    public View(Integer id, Integer projectid, Integer memberid) {
        this.id = id;
        this.projectid = projectid;
        this.memberid = memberid;
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
     * @return memberid
     */
    public Integer getMemberid() {
        return memberid;
    }

    /**
     * 设置
     * @param memberid
     */
    public void setMemberid(Integer memberid) {
        this.memberid = memberid;
    }

    public String toString() {
        return "view{id = " + id + ", projectid = " + projectid + ", memberid = " + memberid + "}";
    }
}
