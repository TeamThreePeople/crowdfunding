package com.team.cf.servlet;

import com.team.cf.entity.Items;
import com.team.cf.service.impl.ItemsServiceImpl;
import com.team.cf.service.impl.ProjectServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ProjectServlet",urlPatterns = "/project")
public class ProjectServlet extends BasicServlet {

    private ProjectServiceImpl projectService = new ProjectServiceImpl();
    //支持详情页(点击支持)
    public void findProjectById(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        //拿到商品id
        String id = request.getParameter("id");
        System.out.println("zhichi id="+id);

        //执行业务 拿到商品 设置请求属性
        Items items = projectService.findProjectById(id);
        request.setAttribute("items",items);

        //执行业务 查询发起人姓名
        String name = projectService.findNameById(id);
        request.setAttribute("name",name);

        /*<%--count表示当前项目的支持单价 设置请求属性 把count传到order.jsp--%>*/
        String count = request.getParameter("count");
        request.setAttribute("count",count);
        System.out.println("count="+count);

        System.out.println("zhichi items="+items);
        request.getRequestDispatcher("jsp/order.jsp").forward(request,response);
    }

}
