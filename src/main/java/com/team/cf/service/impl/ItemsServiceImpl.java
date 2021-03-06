package com.team.cf.service.impl;

import com.team.cf.dao.impl.ItemsDaoImpl;
import com.team.cf.entity.Items;
import com.team.cf.entity.Orders;
import com.team.cf.service.ItemsService;
import com.team.cf.utils.DataSourceUtils;
import com.team.cf.utils.JDBCUtils;
import com.team.cf.vo.PageVo;

import java.sql.SQLException;
import java.util.List;

/**
 * @Description TODO
 * @Author shejiatao
 * @Date 2021/11/29 16:13
 */
public class ItemsServiceImpl implements ItemsService {

    private ItemsDaoImpl dao = new ItemsDaoImpl();




    //首页展示商品信息
    @Override
    public List<Items> viewAllItems() {
        try {
            return dao.selectAllItems();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally {
            try {
                DataSourceUtils.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    //最新商品展示
    @Override
    public List<Items> selectNewItems() {
        try {
            List<Items> itemsList = dao.selectNewItems();
            return itemsList;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally {
            try {
                DataSourceUtils.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    //查询商品详情 编号
    @Override
    public Items findItemsById(String id) {
        System.out.println("ItemsServiceImpl findItemsById");
        try {
            Items items = dao.selectOneItems(id);
            System.out.println("items = "+items);
            return items;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            try {
                DataSourceUtils.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    /**
     * 分页+搜索+商品列表展示
     * @param cid   商品类别编号
     * @param pname 商品的名称
     * @param pageNow   当前页码
     * @return  分页辅助类
     */
    @Override
    public PageVo<Items> findAllProducts(String cid , String pname ,String status,String sort_id, int pageNow){
        System.out.println("service="+cid+","+status+","+sort_id);
        PageVo<Items> vo = null;
        try {
            //查询商品的总记录数
            int myCounts = dao.selectCounts(cid, pname,status,sort_id).intValue();//查询记录数
            System.out.println("myCounts="+myCounts);
            //计算总页数
            int myPages = (int)(myCounts%12==0?myCounts/12:Math.ceil(myCounts/12.0));
            System.out.println("myPages="+myPages);
            //计算起始值
            int begin = (pageNow-1)*12;
            //商品列表
            List<Items> list = dao.selectAll(cid, pname, status,sort_id,begin);//查询所有
            //封装vo
            vo = new PageVo<>(pageNow,myPages,myCounts,cid,pname,status,sort_id,list);

            System.out.println(vo);
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            try {
                DataSourceUtils.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return vo;
    }


    public PageVo<Items> showAll(String cid , String pname ,String status,String sort_id, int pageNow){
        PageVo<Items> vo = null;
        try {
            //查询商品的总记录数
            int myCounts = dao.selectCounts(cid, pname,status,sort_id).intValue();//查询记录数
            System.out.println("myCounts="+myCounts);
            //计算总页数
            int myPages = (int)(myCounts%12==0?myCounts/12:Math.ceil(myCounts/12.0));
            //计算起始值
            int begin = (pageNow-1)*12;
            //商品列表
            List<Items> list = dao.showAll(cid, pname, status,sort_id,begin);//查询所有
            //封装vo
            vo = new PageVo<>(pageNow,myPages,myCounts,cid,pname,status,sort_id,list);

        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            try {
                DataSourceUtils.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return vo;
    }



    //通过商品编号，插入商品信息
    @Override
    public Items findProductById(String id) {
        try {
            Items items = dao.selectOneItems(id);
            System.out.println("items imp="+items);
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

    //修改关注数量
    @Override
    public boolean modifyLikeNumerber(int id ,int count) {

        try {
            int i = dao.modifyLikeNumerber(id, count);
            return i>0;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            try {
                DataSourceUtils.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return false;
    }
    //查询总关注数
    @Override
    public int selectLikeCount(int id) {
        try {
            int i = dao.selectLikeCount(id);
            return i;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            try {
                DataSourceUtils.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return 0;
    }

    //通过订单编号，查询订单明细及商品信息
    @Override
    public Items selectItemAndProductByOid(String oid) {
        try {
            Items items = dao.selectItemAndProductByOid(oid);
            return items;
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

    //通过人id和商品id查找商品信息  个人中心我的关注
    @Override
    public PageVo<Items> selectAllItemsByUid(int uid,int pageNow) {
        PageVo<Items> vo = null;
        try {
            //总关注数
            int count = dao.selectAllLikeItemsByUid(uid).intValue();
            System.out.println(" 总关注数 count="+count);
            //计算总页数
            int myPages = (int)(count%2==0?count/2:Math.ceil(count/2.0));
            System.out.println(" 计算总页数 myPages="+myPages);
            //计算起始值
            int begin = (pageNow-1)*2;
            System.out.println(" 计算起始值 begin="+begin);
            //所有关注的商品的信息
            List<Items> list = dao.selectAllItemsByUid(uid,begin);
            //封装
            //vo = new PageVo<>(pageNow,count,myPages,null,list);
            vo = new PageVo<>(pageNow,count,myPages,uid+"",list);
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

    //通过人id和商品id查找商品信息  浏览记录
    @Override
    public List<Items> selectViewItemsByUid(int uid) {
        try {
            List<Items> list = dao.selectViewItemsByUid(uid);
            return list;
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


    //通过订单号修改当前商品金额&支持人数
    @Override
    public boolean modifyItemsMoney(int pid, int money, int count) {
        System.out.println("pid="+pid+",money="+money+",count="+count);
        try {
            int i = dao.modifyItemsMoney(pid, money, count);
            return i>0?true:false;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            try {
                DataSourceUtils.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    //个人中心-我发起的
    @Override
    public PageVo<Items> selectMyInitiated(int uid,int pageNow) {
        PageVo<Items> vo = null;
        try {
            //发起总数
            int count = dao.selectAllInitiatedByUid(uid).intValue();
            System.out.println(" 总页数 count="+count);
            //计算总页数
            int myPages = (int)(count%2==0?count/2:Math.ceil(count/2.0));
            System.out.println(" 计算总页数 myPages="+myPages);
            //计算起始值
            int begin = (pageNow-1)*2;
            System.out.println(" 计算起始值 begin="+begin);
            //所有发起的商品的信息
            List<Items> list = dao.selectMyInitiated(uid,begin);
            System.out.println(list);
            //封装
            //vo = new PageVo<>(pageNow,count,myPages,null,list);
            vo = new PageVo<>(pageNow,count,myPages,uid+"",list);
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

    //查看项目状态
    @Override
    public PageVo<Items> selectItemsStatus(int uid, int status, int pageNow) {
        PageVo<Items> vo = null;
        try {
            //获取总记录数(状态)
            int myCounts = dao.selectItemsStatusCount(uid,status).intValue();//15
            //计算总页数
            int myPages = (int)(myCounts%2==0?myCounts/2:Math.ceil(myCounts/2.0));//8
            //计算起始值
            int begin = (pageNow-1)*2;
            //查询数据
            List<Items> itemsList = dao.selectItemsStatus(uid,status, begin);
            //封装VO
            vo = new PageVo<>(pageNow,myPages,myCounts,String.valueOf(status),null,null,null,itemsList);
            System.out.println("myCounts="+myCounts+",myPages="+myPages);
            System.out.println(itemsList);
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

    //通过pid下架商品
    @Override
    public boolean delItems(int pid) {
        try {
            int count = dao.delItems(pid);
            return count>0?true:false;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }   finally {
            try {
                DataSourceUtils.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    //通过oid查询商品信息
    @Override
    public Items findItemsByOid(String oid) {

        try {
            Items itemsByOid = dao.findItemsByOid(oid);
            return itemsByOid;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }  finally {
            try {
                DataSourceUtils.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    @Override
    public boolean updateItemsStatus(int pid) {
        try {
            int i = dao.updateItemsStatus(pid);
            return i>0;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }
}
