package com.team.cf.servlet;

import com.team.cf.entity.*;
import com.team.cf.service.ItemsService;
import com.team.cf.service.ProjectReturnService;
import com.team.cf.service.OrderService;

import com.team.cf.service.impl.ItemsServiceImpl;
import com.team.cf.service.impl.ProjectReturnServiceImpl;
import com.team.cf.service.impl.OrderServiceImpl;
import com.team.cf.utils.CommonUtils;
import com.team.cf.vo.PageVo;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.List;
import java.util.Map;

/**
 * 确认回报内容-确认订单-付款-完成
 */


@WebServlet(name = "OrderServlet",urlPatterns = "/project")
public class OrderServlet extends BasicServlet {

    private OrderService orderService = new OrderServiceImpl();
    private ProjectReturnService projectReturnService = new ProjectReturnServiceImpl();
    private ItemsService itemsService = new ItemsServiceImpl();

    //支持详情页(点击支持)
    public void findProjectById(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //拿到商品id
        String id = request.getParameter("id");
        System.out.println("zhichi id=" + id);
        //回报数量
        String rcount = request.getParameter("rcount");

        //执行业务 拿到商品 设置请求属性
        Items items = itemsService.findItemsById(id);
        request.setAttribute("items", items);

        //执行业务 查询发起人姓名
        String name = orderService.findNameById(id);
        request.setAttribute("name", name);



        //查询回报内容
        ProjectReturn aReturn = projectReturnService.findReturn(Integer.parseInt(id));

        /*<%--count表示当前项目的支持单价 设置请求属性 把count传到order.jsp--%>*/
        //总价
        String count = request.getParameter("count");
        //总价格
        int total = aReturn.getFreight() + Integer.parseInt(count);
        request.setAttribute("total", total);
        request.setAttribute("count", count);
        request.setAttribute("rcount", rcount);
        request.setAttribute("aReturn", aReturn);//回报内容

        System.out.println("count=" + count);
        System.out.println("zhichi items=" + items);
        request.getRequestDispatcher("jsp/order.jsp").forward(request, response);
    }

    //确认订单
    public void submitOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pid = request.getParameter("pid");
        String itemsName = request.getParameter("itemsName");//项目名
        String userName = request.getParameter("userName");//发起人
        String areturn = request.getParameter("areturn");//回报内容
        String count = request.getParameter("count");//回报数量
        String price = request.getParameter("price");//价格
        String freight = request.getParameter("freight");//配送费
        double total = Double.parseDouble(request.getParameter("total"));

        Items items = itemsService.findItemsById(pid);

        //已经处于登陆状态
        HttpSession session = request.getSession();
        Member user = (Member) session.getAttribute("member");

        //Orders 订单信息
        Orders orders = new Orders();
        //设置订单的编号
        orders.setOrdernum(CommonUtils.getUUID().replaceAll("-", ""));
        //设置订单的总金额
        orders.setMoney(total);
        //设置订单的所属者
        orders.setMemberid(user.getId());
        //回报数量
        orders.setRtncount(Integer.parseInt(count));
        //项目id
        orders.setProjectid(Integer.parseInt(pid));
        //项目
        orders.setItems(items);

        //执行业务操作
        boolean flag = orderService.insertOrders(orders);
        if (flag){
            request.setAttribute("itemsName",itemsName);
            request.setAttribute("userName",userName);
            request.setAttribute("areturn",areturn);
            request.setAttribute("count",count);
            request.setAttribute("price",price);
            request.setAttribute("freight",freight);
            request.setAttribute("total",total);

            session.setAttribute("orders",orders);
            request.getRequestDispatcher(request.getContextPath()+"/jsp/order2.jsp").forward(request,response);
            //response.sendRedirect(request.getContextPath()+"/jsp/order2.jsp");
        }else {
            request.getRequestDispatcher(request.getContextPath()+"/jsp/support.jsp").forward(request,response);
        }

    }

    //确认订单
    public void confirmOrder(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{

        String username = request.getParameter("username");//收件人
        String phone = request.getParameter("phone");//手机号
        String address = request.getParameter("address");//地址
        String fapiaodetails = request.getParameter("fapiaodetails");//发票抬头
        String fapiao = request.getParameter("fapiao");//需不需要发票


        HttpSession session = request.getSession();
        //Member member = (Member)session.getAttribute("member");

        /*System.out.println("username="+username);
        System.out.println("phone="+phone);
        System.out.println("address="+address);
        System.out.println("mermber="+member.toString());*/

        //从会话中获取订单信息
        Orders orders = (Orders)session.getAttribute("orders");
        orders.setName(username);
        orders.setPhone(phone);
        orders.setAddress(address);
        orders.setInvoictitle(fapiaodetails);
        orders.setInvoice(Integer.parseInt(fapiao));

        //执行业务操作： 更新收货人信息
        boolean flag = orderService.updateOrders(orders);
        if(flag){
            //跳转至支付页面
            System.out.println("我成功了");
            response.sendRedirect(request.getContextPath()+"/jsp/alipay.trade.page.pay.jsp");
        }else{
            request.setAttribute("msg","确认订单失败，请重新尝试");
            request.getRequestDispatcher(request.getContextPath()+"/order_info.jsp").forward(request,response);
        }

    }

    //查询我的订单
    public void viewMyOrders(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //已经处于登陆状态
        HttpSession session = request.getSession();
        Member user = (Member) session.getAttribute("member");

        //获取当前页
        int pageNow = 1;  //默认查询第一页
        String page = request.getParameter("pageNow");
        if(page!=null){
            pageNow = Integer.parseInt(page);
        }

        //获取登陆者的用户编号 uid
        PageVo<Orders> vo = orderService.findAllOrders(String.valueOf(user.getId()), pageNow);

        request.setAttribute("vo",vo);
        System.out.println("vo="+vo);

        //获取订单编号，并且查询订单明细，及商品信息
        for (Orders orders : vo.getList()) {
            //获取订单编号
            String oid = orders.getOrdernum();
            //根据订单编号，查询订单明细及商品信息
            Items items = itemsService.selectItemAndProductByOid(oid);
            orders.setItems(items);

        }

        request.getRequestDispatcher(request.getContextPath()+"/jsp/supportdetails.jsp").forward(request,response);
    }

    //删除订单
    public void delOrderItem(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String oid = request.getParameter("oid");
        System.out.println(oid);

        boolean flag = orderService.delOrder(oid);
        if (flag){
            System.out.println("删除成功");
            //request.getRequestDispatcher(request.getContextPath()+"/jsp/supportdetails.jsp").forward(request,response);
            response.sendRedirect(request.getContextPath()+"/jsp/supportdetails.jsp");

        }
    }

    //订单详情
    public void orderDetails(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String oid = request.getParameter("oid");
        System.out.println("订单详情oid="+oid);

        //根据订单编号，查询订单明细及商品信息
        Items items = itemsService.selectItemAndProductByOid(oid);
        System.out.println("oid查出来的商品items="+items);
        if (items!=null){
            ProjectReturn areturn = projectReturnService.findReturn(items.getId());
            System.out.println("我进来了，aReturn="+areturn);
            request.setAttribute("areturn",areturn);
            request.setAttribute("oid",oid);
            request.setAttribute("product",items);
            request.getRequestDispatcher(request.getContextPath()+"/jsp/modaldetails.jsp").forward(request,response);
        }
    }

    //查看订单状态
    public void orderStatus(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //已经处于登陆状态
        HttpSession session = request.getSession();
        Member user = (Member) session.getAttribute("member");

        String status = request.getParameter("status");
        System.out.println("status="+status);
        //获取当前页
        int pageNow = 1;  //默认查询第一页
        String page = request.getParameter("pageNow");
        if(page!=null){
            pageNow = Integer.parseInt(page);
        }
        if (status==null){
            status=3+"";
        }

        //获取登陆者的用户编号 uid
        PageVo<Orders> vo = orderService.selectOrderStatus(user.getId(),Integer.parseInt(status), pageNow);
        System.out.println("vo="+vo);
        request.setAttribute("vo",vo);



        //获取订单编号，并且查询订单明细，及商品信息
        for (Orders orders : vo.getList()) {
            //获取订单编号
            String oid = orders.getOrdernum();
            //根据订单编号，查询订单明细及商品信息
            Items items = itemsService.selectItemAndProductByOid(oid);
            int percentage = (int) (items.getSupportmoney()/items.getMoney()*100);
            if (percentage>=100){
                items.setCompletion(100);
                items.setStatus(1);
            }else {
                items.setCompletion(percentage);
            }
            orders.setItems(items);
            System.out.println(orders.getItems().getName());
        }

        request.getRequestDispatcher(request.getContextPath()+"/jsp/orderstatus.jsp").forward(request,response);
        //orderService.selectOrderStatus()

    }

}
