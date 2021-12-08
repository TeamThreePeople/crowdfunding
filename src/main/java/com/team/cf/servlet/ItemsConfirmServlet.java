package com.team.cf.servlet;

import com.team.cf.entity.Member;
import com.team.cf.service.MemberService;
import com.team.cf.service.impl.MemberServiceImpl;
import com.team.cf.utils.MD5Utils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ItemsConfirmServlet",urlPatterns = "/confirm")
public class ItemsConfirmServlet extends BasicServlet {

    MemberService service=new MemberServiceImpl();

    //确认收款人信息
    protected void confirmMember(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取请求参数
        String loginacct = request.getParameter("loginacct");
        String userpswd = request.getParameter("userpswd");

        if(userpswd!=null&& !userpswd.trim().equals("")&&loginacct!=null&& !loginacct.trim().equals("")){
            //密码设置MD5处理
            String password = MD5Utils.md5(userpswd);
            //执行确认
            Member member = service.confirm(loginacct, password);
            if(member!=null){
                //跳转到完成页面

                request.getRequestDispatcher(request.getContextPath()+"/jsp/complete.jsp").forward(request,response);
            }else {
                request.setAttribute("msg","用户名与密码不匹配");
                request.getRequestDispatcher(request.getContextPath()+"/jsp/itemsconfirm.jsp").forward(request,response);
            }
        }else{
            request.setAttribute("msg","账户或密码不能为空");
            request.getRequestDispatcher(request.getContextPath()+"/jsp/itemsconfirm.jsp").forward(request,response);
        }

    }

}
