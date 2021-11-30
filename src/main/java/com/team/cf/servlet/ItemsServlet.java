package com.team.cf.servlet;

import com.team.cf.entity.Items;
import com.team.cf.service.impl.ItemsServiceImpl;
import org.junit.Test;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
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
        System.out.println(productsView);
    }

}
