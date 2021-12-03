package com.team.cf.servlet;

import com.team.cf.entity.Items;
import com.team.cf.service.impl.ItemsServiceImpl;
import org.junit.jupiter.api.Test;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;
import java.util.List;

/**
 * @Description TODO
 * @Author shejiatao
 * @Date 2021/11/29 16:16
 */

@WebServlet(name = "ItemsServlet" , urlPatterns = "/product")
public class ItemsServlet extends BasicServlet {

    private ItemsServiceImpl itemsService = new ItemsServiceImpl();

    //展示首页项目
    public void index(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //查询商品
        List<Items> productsView = itemsService.viewAllItems();
        System.out.println(1);
        System.out.println(productsView);
        request.setAttribute("productsView",productsView);

        //跳转至首页
        request.getRequestDispatcher("/index3.jsp").forward(request,response);
    }

    @Test
    public void test(){
        List<Items> productsView = itemsService.viewAllItems();
        System.out.println(1);
        System.out.println("productsView = "+productsView);
    }

    //查询商品详情 编号
    public void findItemsById(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("findItemsById 执行了");

        //商品id
        String aid = request.getParameter("aid");
        System.out.println("aid = "+aid);

        //执行业务
        Items item = itemsService.findItemsById(aid);
        System.out.println("item = "+item);
        Date now =new Date();
        Date deploydate = item.getDeploydate();
        long nowTime = now.getTime();
        long deploydateTime = deploydate.getTime();
        int i = (int) ((deploydateTime - nowTime) / 1000 / 60 / 60 / 24);


        request.setAttribute("item",item);
        request.setAttribute("i",i);

        //跳转至商品详情页
        request.getRequestDispatcher(request.getContextPath()+"/jsp/itemsdetails.jsp").forward(request,response);


    }


}
