package com.team.cf.servlet;

import com.team.cf.entity.Items;
import com.team.cf.service.CategoryService;
import com.team.cf.service.impl.CategoryServiceImpl;
import com.team.cf.service.impl.ItemsServiceImpl;

import com.team.cf.vo.PageVo;
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


    //商品列表展示
    public void findAllProducts(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //商品类别编号
        String cid = request.getParameter("cid");
        //商品状态
        String status = request.getParameter("status");
        //排序
        String sort_id = request.getParameter("sort_id");
        //商品名称
        String pname = request.getParameter("pname");
        //当前页码
        String page = request.getParameter("pageNow");
        System.out.println("cid="+cid);
        System.out.println("status="+status);
        System.out.println("sort_id="+sort_id);

        System.out.println("pname="+pname);
        System.out.println("pageNow="+page);


        //cid  商品列表页面   导航路径
        /*if (cid!=null && !cid.equals("")){
            String cname = categoryService.findNameById(cid);
            if (cname!=null){
                request.setAttribute("cname",cname);
            }
        }*/

        //pname  分页条件查询+表单输入框中展示搜索条件
        if (pname==null){
            pname = ""; //默认查询所有
        }

        //page 分页查询
        int pageNow = 0;
        if (page==null){
            pageNow = 1; //默认查询第一页
        }else {
            pageNow = Integer.parseInt(page);
        }

        //执行分页的业务逻辑
        PageVo<Items> vo = itemsService.findAllProducts(cid, pname,status,sort_id, pageNow);
        System.out.println("vo="+vo);
        request.setAttribute("vo",vo);
        request.getRequestDispatcher(request.getContextPath() + "/jsp/moreItems.jsp").forward(request, response);

    }


    //所有商品展示
    public void viewAllProducts(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //商品类别编号
        String cid = request.getParameter("cid");
        //商品状态
        String status = request.getParameter("status");
        //排序
        String sort_id = request.getParameter("sort_id");
        //商品名称
        String pname = request.getParameter("pname");
        //当前页码
        String page = request.getParameter("pageNow");


        System.out.println("cid="+cid);
        System.out.println("status="+status);
        System.out.println("sort_id="+sort_id);
        System.out.println("pname="+pname);
        System.out.println("pageNow="+page);

        //pname  分页条件查询+表单输入框中展示搜索条件
        if (pname==null){
            pname = ""; //默认查询所有
        }

        //page 分页查询
        int pageNow = 0;
        if (page==null){
            pageNow = 1; //默认查询第一页
        }else {
            pageNow = Integer.parseInt(page);
        }
        //执行分页的业务逻辑
        // PageVo<Items> vo = itemsService.findAllProducts(null, pname,null,null, pageNow);
        PageVo<Items> vo = itemsService.showAll(cid, pname,status,sort_id, pageNow);

        request.setAttribute("vo",vo);
        request.getRequestDispatcher(request.getContextPath()+"/jsp/more.jsp").forward(request,response);

    }

    //商品详情页
    public void findProductById(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String pid = request.getParameter("pid");//商品id
        String pname = request.getParameter("pname");//分类名
        String pageNow = request.getParameter("pageNow");//当前页
        String cid = request.getParameter("cid");//分类id
        System.out.println("pid="+pid);
        System.out.println("pname="+pname);
        System.out.println("pageNow="+pageNow);
        System.out.println("cid="+cid);
        //cname不为null,说明是经过点击导航栏进入列表页
        String cname = request.getParameter("cname");
        if (cname!=null && !cname.equals("")){
            request.setAttribute("cname",cname);
        }

        //执行业务
        Items items = itemsService.findProductById(pid);
        System.out.println("items="+items.toString());
        request.setAttribute("product",items);
        request.setAttribute("pname",pname);
        request.setAttribute("pageNow",pageNow);
        request.setAttribute("cid",cid);
        request.getRequestDispatcher(request.getContextPath()+"/jsp/itemsdetails.jsp").forward(request,response);

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

    @Test
    public void test(){
        List<Items> productsView = itemsService.viewAllItems();
        System.out.println(1);
        System.out.println(productsView);
    }

}
