package com.team.cf.servlet;

import com.google.gson.Gson;
import com.team.cf.entity.Member;
import com.team.cf.entity.Orders;
import com.team.cf.entity.Property;
import com.team.cf.service.OrderService;
import com.team.cf.service.PersonalPropertyService;
import com.team.cf.service.impl.OrderServiceImpl;
import com.team.cf.service.impl.PersonalPropertyServiceImpl;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
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

            String[] name= {"科技","公益","农业","文化"};
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
}