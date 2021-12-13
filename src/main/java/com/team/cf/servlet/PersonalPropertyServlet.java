package com.team.cf.servlet;

import com.google.gson.Gson;
import com.team.cf.entity.*;
import com.team.cf.service.ItemsService;
import com.team.cf.service.MemberService;
import com.team.cf.service.OrderService;
import com.team.cf.service.PersonalPropertyService;
import com.team.cf.service.impl.ItemsServiceImpl;
import com.team.cf.service.impl.MemberServiceImpl;
import com.team.cf.service.impl.OrderServiceImpl;
import com.team.cf.service.impl.PersonalPropertyServiceImpl;
import com.team.cf.vo.PageVo;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Description TODO
 * @Author shejiatao
 * @Date 2021/12/7 21:16
 */

@WebServlet(name = "PersonalPropertyServlet",urlPatterns = "/personal")
public class PersonalPropertyServlet extends BasicServlet{

    private PersonalPropertyService service = new PersonalPropertyServiceImpl();
    private OrderService orderService = new OrderServiceImpl();
    private ItemsService itemsService = new ItemsServiceImpl();
    private MemberService memberService = new MemberServiceImpl();

    //个人中心我的资产
    public void personalProperty(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();
        Member member = (Member)session.getAttribute("member");
        response.setContentType("text/html;charset=utf-8");

        double kjMoney = 0.0;
        double gyMoney = 0.0;
        double whMoney = 0.0;
        double nyMoney = 0.0;

        if (member!=null){
            List<Orders> list = orderService.selectAllOrders(String.valueOf(member.getId()));
            System.out.println("list="+list);
            for (Orders orders : list) {
                Property property = service.selectAllProperty(orders.getOrdernum());
                System.out.println("servletProperty="+property);
                if (property.getCid()==1){
                    kjMoney+=property.getMoney();
                }else if (property.getCid()==2){
                    gyMoney+=property.getMoney();
                }else if (property.getCid()==3){
                    nyMoney+=property.getMoney();
                }else if (property.getCid()==4){
                    whMoney+=property.getMoney();
                }
            }

            System.out.println(kjMoney+","+gyMoney+","+nyMoney+","+whMoney);

            String[] name= {"科技","公益","食品","文化"};
            String[] data= {
                    String.valueOf(kjMoney),
                    String.valueOf(gyMoney),
                    String.valueOf(nyMoney),
                    String.valueOf(whMoney)};
            HashMap<String, Object> map = new HashMap<>();
            map.put("value",data);
            map.put("name",name);

            Gson gson = new Gson();
            String str = gson.toJson(map);
            System.out.println(str);
            //将json数据，响应至客户端
            PrintWriter out = response.getWriter();
            out.write(str);
            out.flush();
            out.close();
            //request.getRequestDispatcher(request.getContextPath()+"jsp/personalcenter.jsp").forward(request,response);


        }
    }

    //个人中心我的包裹
    public void personalPackage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //已经处于登陆状态
        HttpSession session = request.getSession();
        Member user = (Member) session.getAttribute("member");

        //获取当前页
        int pageNow = 1;  //默认查询第一页
        String page = request.getParameter("pageNow");
        if(page!=null){
            pageNow = Integer.parseInt(page);
        }
        ArrayList<Packages> list = new ArrayList<>();
        //获取登陆者的用户编号 uid
        PageVo<Orders> vo = orderService.findAllOrders(String.valueOf(user.getId()), pageNow);
        for (Orders orders : vo.getList()) {
            //发件人
            Member consignor = memberService.findConsignorByOid(orders.getOrdernum());
            //收件人
            Member consignee = memberService.findConsigneeByOid(orders.getOrdernum());
            //商品
            Items items = itemsService.findItemsByOid(orders.getOrdernum());
            Packages packages = new Packages(orders.getOrdernum(),consignor,consignee,items);
            list.add(packages);
        }
        System.out.println("list="+list);
        System.out.println("大小："+list.size());
        request.setAttribute("vo",vo);
        request.setAttribute("list",list);
        request.getRequestDispatcher(request.getContextPath()+"/jsp/mypackge.jsp").forward(request,response);

    }

    //查看收货地址
    public void findAddress(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String oid = request.getParameter("oid");
        Orders orders = orderService.selectAddress(oid);
        if (orders!=null){
            request.setAttribute("orders",orders);
            System.out.println(orders);
            request.getRequestDispatcher(request.getContextPath()+"/jsp/addressdetails.jsp").forward(request,response);
        }
    }

    //资产花费
    public void sumProperty(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Member member = (Member)session.getAttribute("member");

        double sum = 0;
        if (member!=null) {
            List<Orders> list = orderService.selectAllOrders(String.valueOf(member.getId()));
            for (Orders orders : list) {
                Property property = service.selectAllProperty(orders.getOrdernum());
                sum += property.getMoney();
            }
            request.setAttribute("sum",sum);
        }

        Gson gson = new Gson();
        String str = gson.toJson(sum);
        System.out.println(str);
        //将json数据，响应至客户端
        PrintWriter out = response.getWriter();
        out.write(str);
        out.flush();
        out.close();

    }


}