package com.team.cf.servlet;

import com.team.cf.entity.Great;
import com.team.cf.entity.Member;
import com.team.cf.service.GreatService;
import com.team.cf.service.impl.GreatServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * @Description 关注
 * @Author chenJunYu
 * @Date 2021/12/2 15:45
 */
@WebServlet(urlPatterns = "/great")
public class GreatServlet extends BasicServlet{

    private GreatService service = new GreatServiceImpl();

    //判断点赞情况
    protected void findGreatByAidAndUid(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int aid = Integer.parseInt(request.getParameter("aid"));
        int uid = 0;

       /* Cookie[] cookies = request.getCookies();
        for (Cookie cookie : cookies) {
            if (cookie!=null) {
                if (cookie.getName().equals("id")) {
                    uid = Integer.parseInt(cookie.getValue());
                }
            }
        }*/

        //获取会话信息
        HttpSession session = request.getSession();
        Member member = (Member)session.getAttribute("member");
        if (member!=null){
            System.out.println("此人已登录");
            uid = member.getId();
        }

        System.out.println("aid = "+aid);
        System.out.println("uid = "+uid);

        Great great = service.findGreatByAidAndUid(aid, uid);

        if (great!=null){
            int flag = 1;
            System.out.println(1);
            request.setAttribute("flag",flag);
            request.getRequestDispatcher(request.getContextPath()+"/jsp/itemsdetails.jsp").forward(request,response);
        }else {
            int flag = 0;
            System.out.println(0);
            request.setAttribute("flag",flag);
            request.getRequestDispatcher(request.getContextPath()+"/jsp/itemsdetails.jsp").forward(request,response);
        }


/*


        if (great!=null) {
            boolean flag = true;
            String msg = "{\"flag\":"+flag+"}";
            PrintWriter out = response.getWriter();
            out.write(msg);
            out.flush();
            out.close();

        }else {
            boolean flag = false;
            String msg = "{\"flag\":"+flag+"}";
            PrintWriter out = response.getWriter();
            out.write(msg);
            out.flush();
            out.close();
        }
*/


    }
}
