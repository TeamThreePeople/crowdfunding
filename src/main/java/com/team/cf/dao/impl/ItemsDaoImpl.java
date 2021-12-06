package com.team.cf.dao.impl;

import com.team.cf.dao.BaseDao;
import com.team.cf.dao.ItemsDao;
import com.team.cf.entity.Items;
import com.team.cf.utils.DataSourceUtils;

import java.sql.SQLException;
import java.util.List;

/**
 * @Description TODO
 * @Author shejiatao
 * @Date 2021/11/29 16:07
 */
public class ItemsDaoImpl extends BaseDao<Items> implements ItemsDao{

    //首页展示商品信息
    @Override
    public List<Items> selectAllItems() throws SQLException {
        String sql = "select * from t_project limit 0,?";
        List<Items> products = this.getBeanList(DataSourceUtils.getConnection(),sql, Items.class, 4);
        return products;
    }

    //查询商品的总记录数
    @Override
    public Long selectCounts(String cid, String pname,String status,String sort_id) throws Exception {
        String sql = "";
        Long value = 0L;
        if (cid == null && status==null && sort_id==null){//没有就查全部
            sql = "select count(*) from t_project where name like concat('%',?,'%')";
            value = (Long)this.getSingleValue(DataSourceUtils.getConnection(),sql,pname);
        }else if (cid!=null && status==null ){//查id
            sql = "select count(*) from t_project where cid = ? and name like concat('%',?,'%')";
            value = (Long)this.getSingleValue(DataSourceUtils.getConnection(),sql,cid,pname);
        }else if (cid!=null && status!=null ){//查id和状态
            sql = "select count(*) from t_project where cid = ? and  status = ?  and  name like concat('%',?,'%')";
            value = (Long)this.getSingleValue(DataSourceUtils.getConnection(),sql,cid,status,pname);
        }
        return value;
    }

    //查询商品的列表
    @Override
    public List<Items> selectAll(String cid, String pname, String status,String sort_id,int begin) throws Exception {
        String sql ="";
        List<Items> list = null;
        if (cid == null){
            sql = "select * from t_project where name like concat('%',?,'%') limit ?,8";
            list = this.getBeanList(DataSourceUtils.getConnection(),sql,Items.class,pname,begin);
        } else if (cid == null && pname==null){
            sql = "select * from t_project where name like concat('%',?,'%') limit ?,8";
            list = this.getBeanList(DataSourceUtils.getConnection(),sql,Items.class,pname,begin);

        } else if (cid!=null && status==null && sort_id==null){
            sql ="select p.id,p.name,p.money ,p.pimgs ,t.cname " +
                    "from t_type t ,t_project p  where p.cid = t.cid and t.cid = ? "+
                    "and p.name like concat('%',?,'%') limit ?,8";
            list = this.getBeanList(DataSourceUtils.getConnection(),sql,Items.class,cid,pname,begin);
        }else if (cid!=null && status!=null && sort_id==null){//众筹状态
            //and p.`status`=?"
            sql ="select p.id,p.name,p.money ,p.pimgs ,t.cname " +
                    "from t_type t ,t_project p  where p.cid = t.cid and t.cid = ? and p.`status`=?"+
                    "and p.name like concat('%',?,'%') limit ?,8";
            list = this.getBeanList(DataSourceUtils.getConnection(),sql,Items.class,cid,status,pname,begin);
        }else if (cid!=null && status!=null && sort_id.equals("1")){//最新上线
            sql ="select p.id,p.name,p.money ,p.pimgs ,p.deploydate,t.cname " +
                    "from t_type t ,t_project p  where p.cid = t.cid and t.cid = ? and p.`status`=?"+
                    "and p.name like concat('%',?,'%') ORDER BY p.deploydate desc limit ?,8";
            list = this.getBeanList(DataSourceUtils.getConnection(),sql,Items.class,cid,status,pname,begin);

        }else if (cid!=null && status!=null && sort_id.equals("2")){//金额最多
            sql ="select p.id,p.name,p.money ,p.pimgs ,t.cname " +
                    "from t_type t ,t_project p  where p.cid = t.cid and t.cid = ? and p.`status`=?"+
                    "and p.name like concat('%',?,'%') ORDER BY p.money desc limit ?,8";
            list = this.getBeanList(DataSourceUtils.getConnection(),sql,Items.class,cid,status,pname,begin);

        }else if (cid!=null && status!=null && sort_id.equals("3")){//支持最多
            sql ="select p.id,p.name,p.money ,p.pimgs ,p.supporter,t.cname " +
                    "from t_type t ,t_project p  where p.cid = t.cid and t.cid = ? and p.`status`=?"+
                    "and p.name like concat('%',?,'%') ORDER BY p.supporter desc limit ?,8";
            list = this.getBeanList(DataSourceUtils.getConnection(),sql,Items.class,cid,status,pname,begin);
        }


        System.out.println("daoList="+list);
        return list;
    }

    @Override
    public Items selectOne(String pid) throws Exception {


        return null;
    }


    @Override
    public List<Items> showAll(String cid, String pname, String status, String sort_id, int begin) throws SQLException {
        String sql ="";
        List<Items> list = null;
            sql = "select * from t_project where name like concat('%',?,'%') limit ?,8";
            list = this.getBeanList(DataSourceUtils.getConnection(),sql,Items.class,pname,begin);
        return list;
    }


    //查询单个商品信息
    @Override
    public Items selectOneItems(String id) throws SQLException {
        String sql = "select * from t_project where id = ? ";
        Items items = this.getBean(DataSourceUtils.getConnection(),sql, Items.class, id);
        return items;
    }

    //根据人id修改关注数量
    @Override
    public int modifyLikeNumerber(int id ,int count) throws SQLException {
        String sql = "update t_project set follower = ? where id = ?";
        int i = this.update(DataSourceUtils.getConnection(),sql,count,id);
        return i;
    }

    @Override
    public int selectLikeCount(int id) throws SQLException {
        String sql = "select follower from t_project where id = ?";
        int i = (int)this.getSingleValue(DataSourceUtils.getConnection(),sql, id);
        return i;

    }

    //通过订单编号，查询订单明细及商品信息
    @Override
    public Items selectItemAndProductByOid(String oid) throws SQLException {
        String sql = "select  * from t_order o,t_project p where o.projectid = p.id and o.ordernum = ?";
        Items items = this.getBean(DataSourceUtils.getConnection(),sql, Items.class, oid);
        return items;
    }

    //通过人id和商品id查找商品信息  个人中心我的关注
    @Override
    public List<Items> selectAllItemsByUid(int uid,int begin) throws SQLException {
        String sql = "select p.* from great g ,t_project p , t_member m where g.uid =  m.id and g.aid = p.id and m.id = ? limit ?,2";
        List<Items> list = this.getBeanList(DataSourceUtils.getConnection(),sql, Items.class, uid,begin);
        return list;
    }

    //通过人id和商品id查找商品信息  个人中心我的关注  总数
    @Override
    public Long selectAllLikeItemsByUid(int uid) throws SQLException {
        String sql = "select count(*) from great g ,t_project p , t_member m where g.uid =  m.id and g.aid = p.id and m.id = ? ";
        Long count = (Long) this.getSingleValue(DataSourceUtils.getConnection(),sql, uid);
        return count;
    }
}
