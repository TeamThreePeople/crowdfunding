package com.team.cf.servlet;


import com.team.cf.entity.Member;

import com.team.cf.service.MemberService;
import com.team.cf.service.impl.MemberServiceImpl;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.net.URLDecoder;
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

    //注册
    protected void register(HttpServletRequest request, HttpServletResponse response) throws InvocationTargetException, IllegalAccessException, IOException, ServletException {
        System.out.println("register执行了");
//        Map<String, String[]> parameterMap = request.getParameterMap();
//
//
//        Iterator<Map.Entry<String, String[]>> iterator = parameterMap.entrySet().iterator();
//        while (iterator.hasNext()){
//            Map.Entry<String, String[]> next = iterator.next();
//            System.out.println(next.getKey()+","+next.getValue());
//        }

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
}
