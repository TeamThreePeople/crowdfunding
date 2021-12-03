package com.team.cf.servlet;

import com.team.cf.entity.Great;
import com.team.cf.service.GreatService;
import com.team.cf.service.impl.GreatServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * @Description TODO
 * @Author chenJunYu
 * @Date 2021/12/2 15:45
 */
@WebServlet(urlPatterns = "/great")
public class GreatServlet extends BasicServlet{

    private GreatService service = new GreatServiceImpl();

    //判断点赞情况
    protected void findGreatByAidAndUid(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int aid = Integer.parseInt(request.getParameter("aid"));
        int uid = 5;

        Cookie[] cookies = request.getCookies();
        for (Cookie cookie : cookies) {
            if (cookie!=null) {
                if (cookie.getName().equals("id")) {
                    uid = Integer.parseInt(cookie.getValue());
                }
            }
        }

        System.out.println("aid = "+aid);
        System.out.println("uid = "+uid);

        int number = 0;
        Great great = service.findGreatByAidAndUid(aid, uid);


        if (great!=null){
            int flag = 1;
            request.setAttribute("flag",flag);
            request.getRequestDispatcher(request.getContextPath()+"/jsp/itemsdetails.jsp").forward(request,response);
        }else {
            int flag = 0;
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
