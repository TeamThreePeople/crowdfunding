package com.team.cf.servlet;

import com.google.gson.Gson;
import com.team.cf.entity.*;

import com.team.cf.service.GreatService;

import com.team.cf.service.ProjectReturnService;
import com.team.cf.service.impl.GreatServiceImpl;
import com.team.cf.service.impl.ItemsServiceImpl;

import com.team.cf.service.impl.MemberServiceImpl;
import com.team.cf.service.impl.ProjectReturnServiceImpl;
import com.team.cf.vo.PageVo;
import org.junit.jupiter.api.Test;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
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
    private GreatService greatService = new GreatServiceImpl();
    private ProjectReturnService returnService = new ProjectReturnServiceImpl();
    private MemberServiceImpl memberService = new MemberServiceImpl();

    //展示首页项目
    public void index(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //查询商品
        List<Items> productsView = itemsService.viewAllItems();
        List<Items> itemsList = itemsService.selectNewItems();
        for (Items items : itemsList) {
            int percentage = (int) (items.getSupportmoney()/items.getMoney()*100);
            if (percentage>=100){
                items.setCompletion(percentage);
                items.setStatus(1);
            }else {
                items.setCompletion(percentage);
            }
        }

        for (Items items : productsView) {
            int percentage = (int) (items.getSupportmoney()/items.getMoney()*100);
            if (percentage>=100){
                items.setCompletion(percentage);
                items.setStatus(1);
            }else {
                items.setCompletion(percentage);
            }
        }

        request.setAttribute("productsView",productsView);
        request.setAttribute("newItems",itemsList);

        //跳转至首页
        request.getRequestDispatcher("/index.jsp").forward(request,response);

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
        if (cid == null){
            cid = null;
        }else if (cid.equals("")){
            cid = null;
        }

        if (status == null){
            status = null;
        }else if (status.equals("")){
            status = null;
        }

        if (sort_id == null){
            sort_id = null;
        }else if (sort_id.equals("")){
            sort_id = null;
        }




        System.out.println(cid+","+status+","+sort_id);
        //执行分页的业务逻辑
        PageVo<Items> vo = itemsService.findAllProducts(cid, pname,status,sort_id, pageNow);

        for (Items items : vo.getList()) {
            int percentage = (int) (items.getSupportmoney()/items.getMoney()*100);
            if (percentage>=100){
                items.setCompletion(100);
                items.setStatus(1);
                boolean b = itemsService.updateItemsStatus(items.getId());
            }else {
                items.setCompletion(percentage);
            }
        }
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
        for (Items items : vo.getList()) {
            int percentage = (int) (items.getSupportmoney()/items.getMoney()*100);
            if (percentage>=100){
                items.setCompletion(100);
                items.setStatus(1);
                boolean b = itemsService.updateItemsStatus(items.getId());
            }else {
                items.setCompletion(percentage);
            }
        }

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
        int percentage = (int) (items.getSupportmoney()/items.getMoney()*100);

        if (percentage>=100){
            items.setCompletion(percentage);
            items.setStatus(1);
            boolean b = itemsService.updateItemsStatus(items.getId());
        }else {
            items.setCompletion(percentage);
        }

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
        int uid  = 0;
        //获取会话信息
        HttpSession session = request.getSession();
        Member member = (Member)session.getAttribute("member");
        if (member!=null){
            System.out.println("此人已登录");
            uid = member.getId();
        }

        //执行业务
        Items item = itemsService.findItemsById(aid);
        //查询发起人信息
        Member memberById = memberService.findMemberById(item.getMemberid());
        //百分比
        int percentage = (int) (item.getSupportmoney()/item.getMoney()*100);
        if (percentage>=100){
            item.setCompletion(percentage);
            item.setStatus(1);
            boolean b = itemsService.updateItemsStatus(item.getId());

        }else {
            item.setCompletion(percentage);
        }
        Date now =new Date();
        Date deploydate = item.getDeploydate();
        long nowTime = now.getTime();
        long deploydateTime = deploydate.getTime();
        int i = (int) ((deploydateTime - nowTime) / 1000 / 60 / 60 / 24);


        Great great = greatService.findGreatByAidAndUid(Integer.parseInt(aid), uid);
        int userLike = 0;
        if (great!=null){
            userLike = 1;
        }
        request.setAttribute("item",item);
        request.setAttribute("userLike",userLike);
        request.setAttribute("memberById",memberById);
        //跳转至商品详情页
        request.getRequestDispatcher(request.getContextPath()+"/jsp/itemsdetails.jsp").forward(request,response);
    }

    //立即支持详情页(点击立即支持)
    public void findProductById1(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("id");
        System.out.println("lijizhichi id="+id);

        String name = request.getParameter("name");
        System.out.println("lijizhichi name="+name);

        //执行业务
        Items items = itemsService.findProductById(id);
        ProjectReturn aReturn = returnService.findReturn(items.getId());

        request.setAttribute("items",items);
        request.setAttribute("aReturn",aReturn);
        request.setAttribute("name",name);
        System.out.println("lijizhichi items="+items);
        request.getRequestDispatcher("jsp/support.jsp").forward(request,response);
    }

    //通过人id和商品id查找商品信息  个人中心我的关注
    protected void selectAllItemsByUid(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("selectAllItemsByUid执行了");

        int uid  = 0;
        //获取会话信息
        HttpSession session = request.getSession();
        Member member = (Member)session.getAttribute("member");
        if (member!=null){
            System.out.println("此人已登录");
            uid = member.getId();
        }
        System.out.println("uid = "+uid);
        String page = request.getParameter("pageNow");
        System.out.println("当前页 page = "+page);

        //page 分页查询
        int pageNow = 0;
        if (page==null){
            pageNow = 1; //默认查询第一页
        }else {
            pageNow = Integer.parseInt(page);
        }

        PageVo<Items> pageVo = itemsService.selectAllItemsByUid(uid, pageNow);
        System.out.println("vo="+pageVo);
        for (Items items : pageVo.getList()) {
            int percentage = (int) (items.getSupportmoney()/items.getMoney()*100);
            if (percentage>=100){
                items.setCompletion(100);
                items.setStatus(1);
                boolean b = itemsService.updateItemsStatus(items.getId());
            }else {
                items.setCompletion(percentage);
            }
        }


        request.setAttribute("pageVo",pageVo);
        request.getRequestDispatcher(request.getContextPath()+"/jsp/personLike.jsp").forward(request,response);

    }

    //取消关注商品
    protected void deleteLike(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //商品id
        int aid = Integer.parseInt(request.getParameter("aid"));
        System.out.println("商品id aid = "+aid);
        int uid  = 0;
        //获取会话信息
        HttpSession session = request.getSession();
        Member member = (Member)session.getAttribute("member");
        if (member!=null){
            System.out.println("此人已登录");
            uid = member.getId();
        }
        System.out.println("人id uid = "+uid);

        boolean flag = greatService.deleteGreat(aid, uid);
        System.out.println("有没有删除成功 flag = "+flag);
        if (flag) {
            request.setAttribute("flag",flag);
            response.sendRedirect(request.getContextPath()+"/jsp/personLike.jsp");
        }

    }

    //通过人id和商品id查找商品信息  浏览记录
    protected void selectViewItemsByUid(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("selectViewItemsByUid 执行了");
        int uid  = 0;
        //获取会话信息
        HttpSession session = request.getSession();
        Member member = (Member)session.getAttribute("member");
        if (member!=null){
            System.out.println("此人已登录");
            uid = member.getId();
        }
        System.out.println("人id uid = "+uid);

        List<Items> list = itemsService.selectViewItemsByUid(uid);
        System.out.println("浏览记录 list = "+list);
        request.setAttribute("list",list);
        request.getRequestDispatcher(request.getContextPath()+"/jsp/connect/liiulanjilu.jsp").forward(request,response);
    }

    //个人中心-我发起的
    public void findAllInitiated(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Member member = (Member)session.getAttribute("member");

        //获取当前页
        int pageNow = 1;  //默认查询第一页
        String page = request.getParameter("pageNow");
        if(page!=null){
            pageNow = Integer.parseInt(page);
        }

       PageVo<Items> vo = itemsService.selectMyInitiated(member.getId(), pageNow);
       System.out.println(vo);
        for (Items items : vo.getList()) {
           int percentage = (int) (items.getSupportmoney() / items.getMoney() * 100);
           if (percentage >= 100) {

               items.setCompletion(100);
               items.setStatus(1);
               boolean b = itemsService.updateItemsStatus(items.getId());
           } else {

               items.setCompletion(percentage);
           }
       }
       request.setAttribute("vo",vo);
       request.getRequestDispatcher(request.getContextPath()+"/jsp/myinitiated.jsp").forward(request,response);

    }

    //我发起的-项目状态
    public void itemsStatus(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //已经处于登陆状态
        HttpSession session = request.getSession();
        Member user = (Member) session.getAttribute("member");

        String status = request.getParameter("status");
        System.out.println("status=" + status);
        //获取当前页
        int pageNow = 1;  //默认查询第一页
        String page = request.getParameter("pageNow");
        if (page != null) {
            pageNow = Integer.parseInt(page);
        }
        if (status==null){
            status=2+"";
        }

        //获取登陆者的用户编号 uid
        PageVo<Items> vo = itemsService.selectItemsStatus(user.getId(), Integer.parseInt(status), pageNow);
        for (Items items : vo.getList()) {
            int percentage = (int) (items.getSupportmoney() / items.getMoney() * 100);
            if (percentage >= 100) {

                items.setCompletion(100);
                items.setStatus(1);
                boolean b = itemsService.updateItemsStatus(items.getId());
            } else {

                items.setCompletion(percentage);
            }
        }

        System.out.println("vo=" + vo);
        request.setAttribute("vo", vo);
        request.getRequestDispatcher(request.getContextPath() + "/jsp/myinitiated.jsp").forward(request, response);

    }

    //下架商品
    public void deleteItems(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String pid = request.getParameter("pid");
        boolean b = itemsService.delItems(Integer.parseInt(pid));
        System.out.println("delPid="+pid);
        if (b){
            response.sendRedirect(request.getContextPath()+"jsp/myinitiated.jsp");
        }
    }

}
