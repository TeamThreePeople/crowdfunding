package com.team.cf.servlet;

import com.google.gson.Gson;
import com.team.cf.entity.Category;
import com.team.cf.entity.Orderby;
import com.team.cf.entity.Status;
import com.team.cf.service.CategoryService;
import com.team.cf.service.impl.CategoryServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 * @Description 商品分类
 * @Author shejiatao
 * @Date 2021/11/30 20:03
 */
@WebServlet(name="CategoryServlet" , urlPatterns = "/category")
public class CategoryServlet extends BasicServlet{

    private CategoryService categoryService = new CategoryServiceImpl();

    //通过json传递所有商品类别
    public void findAllCategory(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Category> categoryList = categoryService.findAllCategory();
        System.out.println(categoryList);
        //创建Gson对象
        Gson gson = new Gson();
        //将数据封装进Gson中
        String str = gson.toJson(categoryList);
        //将json数据，响应至客户端
        PrintWriter out = response.getWriter();
        out.write(str);
        out.flush();
        out.close();
    }


}
