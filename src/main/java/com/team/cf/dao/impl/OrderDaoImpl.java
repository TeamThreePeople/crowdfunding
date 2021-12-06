package com.team.cf.dao.impl;

import com.team.cf.dao.BaseDao;
import com.team.cf.dao.OrderDao;
import com.team.cf.entity.Items;
import com.team.cf.entity.Orders;
import com.team.cf.utils.DataSourceUtils;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

/**
 * @Description 支持
 * @Author 郝者伦
 * @Date 2021/12/1 16:11
 */
public class OrderDaoImpl extends BaseDao<Orders> implements OrderDao {
    //通过商品编号查询支持信息
    @Override
    public Items selectOne(String id) throws Exception {
        /*String sql = "select * from t_project where id = ?";
        Items items = this.getBean(DataSourceUtils.getConnection(),sql, Items.class, id);
        return items;*/
        return null;
    }
     //通过项目id查看用户姓名
    @Override
    public String selectOneName(String id) throws Exception {
        String sql="select m.realname from t_project p join t_member m on p.memberid=m.id where p.id=?";
        String name = (String) this.getSingleValue(DataSourceUtils.getConnection(),sql, id);
        return name;
    }

    //添加收货地址
    @Override
    public int addAddress(String username, String phone, String address,int uid) throws SQLException {
        String sql = "insert into t_member_address values(default,?,?,?,?,null)";
        int update = this.update(DataSourceUtils.getConnection(),sql, username, phone, uid,address);
        return update;
    }

    //插入订单信息
    @Override
    public int insertOrders(Orders orders) throws SQLException {
        String sql = "insert into t_order values(default,?,?,null,?,now(),?,?,?,null,null,null,null,null,null)";
        int i = this.update(DataSourceUtils.getConnection(), sql,
                orders.getMemberid(),
                orders.getProjectid(),
                orders.getOrdernum(),
                orders.getMoney(),
                orders.getRtncount(),
                0);
        return i;
    }

    @Override
    public int insertOrdersItem(Orders orders) throws SQLException {
        return 0;
    }

    //更新订单中的收货人信息
    @Override
    public int updateOrdersUser(Orders orders) throws SQLException {
        String sql = "update t_order set name = ? ,phone = ? ,address = ? ,invoice = ? ,invoictitle =? ";
        int i = this.update(DataSourceUtils.getConnection(), sql,
                orders.getName(),
                orders.getPhone(),
                orders.getAddress(),
                orders.getInvoice(),
                orders.getInvoictitle());
        return i;
    }

    //更新订单状态
    @Override
    public int updateOrdersState(String oid) throws SQLException {
        System.out.println("oid="+oid);
        String sql = "update t_order set status = 1 where ordernum = ?";
        int i = this.update(DataSourceUtils.getConnection(), sql, oid);
        return i;
    }

    //通过用户编号，查询所拥有的订单信息
    @Override
    public List<Orders> selectOrdersByUid(String uid, int begin) throws SQLException {
        String sql = "select * from t_order where memberid = ? order by createdate desc limit ?,3";
        List<Orders> ordersList = this.getBeanList(DataSourceUtils.getConnection(), sql, Orders.class, uid, begin);
        return ordersList;
    }

    //通过用户编号，查询所拥有的订单信息的数量
    @Override
    public Long selectOrdersCountByUid(String uid) throws SQLException {
        String sql = "select count(*) from t_order where memberid = ?";
        Object value = this.getSingleValue(DataSourceUtils.getConnection(), sql, uid);
        return Long.valueOf(value.toString());
    }

    //通过订单编号，查询订单明细及商品信息
    @Override
    public List<Map<String, Object>> selectItemAndProductByOid(String oid) throws SQLException {
        String sql = "select p.`name`,p.pimgs,p.money from t_order o,t_project p where o.projectid = p.id and o.ordernum = ?";
        List<Map<String, Object>> mapList = this.getMapList(DataSourceUtils.getConnection(), sql, oid);
        return mapList;
    }

    //通过oid 删除订单
    @Override
    public int delOrder(String oid) throws SQLException {
        System.out.println("oid="+oid);
        String sql = "delete from t_order where ordernum = ?";
        int i = this.update(DataSourceUtils.getConnection(), sql, oid);
        return i;
    }

    //查看订单状态数量
    @Override
    public Long selectOrderStatusCount(int uid,int status) throws SQLException {
        String sql = "";
        Object value = null;
        if (status==3){
               sql = "select count(*) from t_order where memberid=? ";
               value = this.getSingleValue(DataSourceUtils.getConnection(), sql, uid);
        }else {
               sql = "select count(*) from t_order where memberid=? and status = ?";
               value = this.getSingleValue(DataSourceUtils.getConnection(), sql, uid,status);
        }
        return Long.valueOf(value.toString());

    }

    //通过用户编号，查询所拥有的订单信息
    @Override
    public List<Orders> selectOrderStatus(int  uid,int status, int begin) throws SQLException {
        String sql = "";
        List<Orders> ordersList = null;
        if (status==3) {
            sql = "select * from t_order where memberid = ?  order by createdate desc limit ?,3";
            ordersList = this.getBeanList(DataSourceUtils.getConnection(), sql, Orders.class, uid, begin);
        }else {
            sql = "select * from t_order where memberid = ? and status = ?  order by createdate desc limit ?,3";
            ordersList = this.getBeanList(DataSourceUtils.getConnection(), sql, Orders.class, uid, status, begin);
        }
        return ordersList;
    }

}

