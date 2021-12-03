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

    //立即支持详情页(点击立即支持)
    public void findProductById(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("id");
        System.out.println("lijizhichi id="+id);

        String name = request.getParameter("name");
        System.out.println("lijizhichi name="+name);

        //cname不为null,说明是经过点击导航栏进入列表页
        /*String cname = request.getParameter("cname");
        if(cname!=null && !cname.equals("")){
            request.setAttribute("cname",came);
        }*/

        //执行业务
        Items items = itemsService.findProductById(id);
        request.setAttribute("items",items);
        request.setAttribute("name",name);
        System.out.println("lijizhichi items="+items);
        request.getRequestDispatcher("jsp/support.jsp").forward(request,response);
    }


}
