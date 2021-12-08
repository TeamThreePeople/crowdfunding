package com.team.cf.servlet;

import com.team.cf.entity.Member;
import com.team.cf.entity.View;
import com.team.cf.service.ViewService;
import com.team.cf.service.impl.ViewServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

/**
 * @Description TODO
 * @Author chenJunYu
 * @Date 2021/12/7 22:36
 */
@WebServlet(name = "ViewServlet" , urlPatterns = "/view")
public class ViewServlet extends BasicServlet {
    ViewService viewService = new ViewServiceImpl();

    //判断浏览情况
    protected void findView(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        int memberid  = 0;
        //获取会话信息
        HttpSession session = request.getSession();
        Member member = (Member)session.getAttribute("member");
        if (member!=null){
            System.out.println("此人已登录");
            memberid = member.getId();
        }
        System.out.println("人 memberid = "+memberid);




        int projectid =Integer.parseInt(request.getParameter("projectid") );
        System.out.println("物 projectid = "+projectid);
        //浏览情况
        View view = viewService.selectViewByprojectidAndmemberid(projectid , memberid);
        System.out.println("view = "+view);
        if (view!=null) {
            //有记录
            boolean delete = viewService.deleteViewItem(projectid, memberid);
            System.out.println("先删除旧的 delete = "+delete);
            boolean add = viewService.addViewItem(projectid, memberid);
            System.out.println("再添加新的 add = "+add);
        }else {
            boolean add = viewService.addViewItem(projectid, memberid);
            System.out.println("没有直接添加新的 add = "+add);
        }


    }
}
