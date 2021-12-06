package com.team.cf.service.impl;

import com.team.cf.dao.OrderDao;
import com.team.cf.dao.impl.OrderDaoImpl;
import com.team.cf.entity.Items;
import com.team.cf.entity.Orders;
import com.team.cf.service.OrderService;
import com.team.cf.utils.DataSourceUtils;
import com.team.cf.utils.JDBCUtils;
import com.team.cf.vo.PageVo;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

/**
 * @Description TODO
 * @Author 郝者伦
 * @Date 2021/12/1 16:29
 */
public class OrderServiceImpl implements OrderService {
    private OrderDao dao=new OrderDaoImpl();

    //通过商品编号查询个人信息
    @Override
    public Items findProjectById(String id) {
        try {
            Items items = dao.selectOne(id);
            System.out.println("service imp="+items);
            return items;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                DataSourceUtils.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return null;
    }
    //通过商品id查询发起人名字
    @Override
    public String findNameById(String id) {
        try {
            String name = dao.selectOneName(id);
            System.out.println("service name="+name);
            return name;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                DataSourceUtils.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    //添加收货人地址
    @Override
    public int addAddress(String username, String phone, String address,int uid) {
        try {
            int i = dao.addAddress(username, phone, address,uid);
            return i;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            try {
                DataSourceUtils.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return 0;
    }


    /**
     * 添加事务管理
     * 订单信息 & 订单明细 同时插入至数据库，要么成功要么失败
     * @param orders  订单信息，包含了订单明细信息
     * @return
     */
    //插入订单及订单明细
    @Override
    public boolean insertOrders(Orders orders) {
        try {
            //关闭自动提交事务
            DataSourceUtils.startTransaction();
            dao.insertOrders(orders);
            //成功
            return true;
        } catch (SQLException e) {
            //回滚事务
            try {
                DataSourceUtils.rollback();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
            e.printStackTrace();
            //失败
            return false;
        }finally {
            //提交事务，并释放资源，归还连接对象
            try {
                DataSourceUtils.commitAndRelease();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    //更新订单中的收货人信息
    @Override
    public boolean updateOrders(Orders orders) {
        try {
            int i = dao.updateOrdersUser(orders);
            return i>0?true:false;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                DataSourceUtils.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return false;

    }

    //更新订单状态
    @Override
    public boolean updateOrdersState(String oid) {
        System.out.println("oid="+oid);
        try {
            int i = dao.updateOrdersState(oid);
            return i>0?true:false;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }  finally {
            try {
                DataSourceUtils.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    //分页展示我的订单信息
    @Override
    public PageVo<Orders> findAllOrders(String uid, int pageNow) {
        PageVo<Orders> vo = null;
        try {
            //获取总记录数
            int myCounts = dao.selectOrdersCountByUid(uid).intValue();//15
            //计算总页数
            int myPages = (int)(myCounts%3==0?myCounts/3:Math.ceil(myCounts/3.0));//8
            //计算起始值
            int begin = (pageNow-1)*3;
            //查询数据
            List<Orders> ordersList = dao.selectOrdersByUid(uid, begin);
            //封装VO
            vo = new PageVo<>(pageNow,myPages,myCounts,uid,null,null,null,ordersList);
            System.out.println("myCounts="+myCounts+",myPages="+myPages);

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                DataSourceUtils.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return vo;
    }

    //通过oid，查询订单明细及商品信息
    @Override
    public List<Map<String, Object>> findItemsAndProduct(String oid) {
        try {
            List<Map<String, Object>> maps = dao.selectItemAndProductByOid(oid);
            return maps;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                DataSourceUtils.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return null;

    }

    //通过oid 删除订单
    @Override
    public boolean delOrder(String oid) {
        try {
            int i = dao.delOrder(oid);
            return i>0?true:false;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally {
            try {
                DataSourceUtils.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    //查看订单状态
    @Override
    public PageVo<Orders> selectOrderStatus(int uid,int status, int pageNow) {
        PageVo<Orders> vo = null;
        try {
            //获取总记录数(状态)
            int myCounts = dao.selectOrderStatusCount(uid,status).intValue();//15
            //计算总页数
            int myPages = (int)(myCounts%3==0?myCounts/3:Math.ceil(myCounts/3.0));//8
            //计算起始值
            int begin = (pageNow-1)*3;
            //查询数据
            List<Orders> ordersList = dao.selectOrderStatus(uid,status, begin);
            //封装VO
            vo = new PageVo<>(pageNow,myPages,myCounts,String.valueOf(status),null,null,null,ordersList);
            System.out.println("myCounts="+myCounts+",myPages="+myPages);

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                DataSourceUtils.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return vo;
    }

    //通过oid查询订单信息
    @Override
    public Orders selectFindOrder(String oid) {
        System.out.println("通过oid查询订单信息:"+oid);
        try {
            Orders orders = dao.selectFindOrder(oid);
            return orders;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            try {
                DataSourceUtils.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return null;
    }
}
