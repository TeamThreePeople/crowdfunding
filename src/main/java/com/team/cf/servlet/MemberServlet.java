package com.team.cf.servlet;


import com.team.cf.entity.Member;

import com.team.cf.service.MemberService;
import com.team.cf.service.impl.MemberServiceImpl;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/**
 * @Description TODO
 * @Author chenJunYu
 * @Date 2021/11/29 21:03
 */
@WebServlet(urlPatterns = "/member")
public class MemberServlet extends BasicServlet {

    private MemberService service = new MemberServiceImpl();

    //登录
    public void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        System.out.println(username+","+password);


        if(username!=null&&password!=null&& !username.equals("") && !password.equals("")){
            Member member = service.login(username, password);

            if(member!=null){

                HttpSession session = request.getSession();
                session.setAttribute("member",member);



                //记住用户名
                String remember = request.getParameter("remember");
                if(remember!=null&&remember.trim().equals("remember")){
                    //创建cookie
                    Cookie rememberCookie=new Cookie("remember", URLEncoder.encode(username,"utf8"));
                    //设置cookie有效时长
                    rememberCookie.setMaxAge(7*24*60*60);
                    //将cookie添加至响应中
                    response.addCookie(rememberCookie);
                }
                response.sendRedirect(request.getContextPath()+"/product?method=index");

            }else{
                request.setAttribute("msg","用户名与密码不匹配");
                request.getRequestDispatcher(request.getContextPath()+"/login.jsp").forward(request,response);

            }
        }else{
            request.setAttribute("msg","用户名或密码不能为空");
            request.getRequestDispatcher(request.getContextPath()+"/login.jsp").forward(request,response);

        }

    }


    //登出
    public void logout(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //销毁会话
        HttpSession session = request.getSession();
        session.invalidate();
        //Cookie清除
        Cookie usernameCookie = new Cookie("username", "");
        Cookie passwordCookie = new Cookie("password", "");
        usernameCookie.setMaxAge(0);
        passwordCookie.setMaxAge(0);
        response.addCookie(usernameCookie);
        response.addCookie(passwordCookie);
        response.sendRedirect(request.getContextPath() + "/product?method=index");
    }



    //注册
    protected void register(HttpServletRequest request, HttpServletResponse response) throws InvocationTargetException, IllegalAccessException, IOException, ServletException {
        System.out.println("register执行了");

        //用户名
        String name = request.getParameter("name");
        System.out.println("name = "+name);
        //密码
        String password = request.getParameter("password");
        System.out.println("password = "+password);
        //重复密码
        String repassword = request.getParameter("repassword");
        System.out.println("repassword = "+repassword);
        //邮箱
        String email = request.getParameter("email");
        System.out.println("email = "+email);

        Member member = new Member(name,password,email);

        //实例，MAP<实例名字>
        //BeanUtils.populate(member, parameterMap);
        System.out.println("member = " + member);

        boolean flag = service.register(member);
        System.out.println("flag = "+ flag);

        if (flag) {
            System.out.println("注册成功");
            //response.sendRedirect(request.getContextPath()+"/login.jsp");
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }else {
            System.out.println("注册失败");
            //response.sendRedirect(request.getContextPath()+"/register.jsp");
            request.getRequestDispatcher("register.jsp").forward(request,response);
        }
    }

    //校验昵称
    protected void validateName(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("validateName 执行了");
        String name = request.getParameter("name");
        System.out.println("界面输入的名字 name = "+name);
        boolean flag = service.validateName(name);
        System.out.println("是否存在 flag = "+flag);
        String msg = "{\"flag\":"+flag+"}";
        PrintWriter out = response.getWriter();
        out.write(msg);
        out.flush();
        out.close();
    }

    //个人中心信息
    protected void findMemberById(HttpServletRequest request, HttpServletResponse response) throws  IOException, ServletException {
        System.out.println("findMemberById 执行了");
        int id = 0;
        Cookie[] cookies = request.getCookies();
        for (Cookie cookie : cookies) {
            if (cookie!=null) {
                if (cookie.getName().equals("id")) {
                    id = Integer.parseInt(cookie.getValue());
                }
            }
        }
        System.out.println("id = "+id);

        Member member = service.findMemberById(id);
        System.out.println("member = " + member);

        request.getRequestDispatcher("personalcenter.jsp").forward(request,response);
    }
}
