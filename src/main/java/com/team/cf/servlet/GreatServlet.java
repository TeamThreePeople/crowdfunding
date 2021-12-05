package com.team.cf.servlet;

import com.google.gson.Gson;
import com.team.cf.entity.Great;
import com.team.cf.entity.Member;
import com.team.cf.service.GreatService;
import com.team.cf.service.ItemsService;
import com.team.cf.service.impl.GreatServiceImpl;
import com.team.cf.service.impl.ItemsServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
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
    private ItemsService itemsService = new ItemsServiceImpl();
    //判断点赞情况
    protected void findGreatByAidAndUid(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*
        int uid = 0;*/

        /*Cookie[] cookies = request.getCookies();
        for (Cookie cookie : cookies) {
            if (cookie!=null) {
                if (cookie.getName().equals("id")) {
                    uid = Integer.parseInt(cookie.getValue());
                }
            }
        }
*/
        int uid  = 0;
        //获取会话信息
        HttpSession session = request.getSession();
        Member member = (Member)session.getAttribute("member");
        if (member!=null){
            System.out.println("此人已登录");
            uid = member.getId();
        }


        //接收前端数
        int aid = Integer.parseInt(request.getParameter("aid"));
        int ulike = Integer.parseInt( request.getParameter("ulike"));
        System.out.println("ulike="+ulike);
        System.out.println("aid = "+aid);
        System.out.println("uid = "+uid);

        Gson gson = new Gson();
        if (ulike==1){
            //关注加一
            //找到关注的数量
            int likeCount = itemsService.selectLikeCount(aid);
            itemsService.modifyLikeNumerber(aid, likeCount+1);
            int follower = itemsService.selectLikeCount(aid);
            service.insertGreat(aid, uid);
            //将数据封装进Gson中
            String str = gson.toJson(follower+"");
            //将json数据，响应至客户端
            PrintWriter out = response.getWriter();
            out.write(str);
            out.flush();
            out.close();

        }else {
            //关注减一
            //找到关注数量
            int likeCount = itemsService.selectLikeCount(aid);
            itemsService.modifyLikeNumerber(aid, likeCount-1);
            int follower = itemsService.selectLikeCount(aid);
            service.deleteGreat(aid, uid);
            //将数据封装进Gson中
            String str = gson.toJson(follower+"");
            //将json数据，响应至客户端
            PrintWriter out = response.getWriter();
            out.write(str);
            out.flush();
            out.close();

        }



        //点赞数
      /*  int count = Integer.parseInt(request.getParameter("count"));

        boolean b = itemsService.modifyLikeNumerber(aid, count);*/

        Great great = service.findGreatByAidAndUid(aid, uid);

        /*if (b){

            //将数据封装进Gson中
            String str = gson.toJson(userLike);
            //将json数据，响应至客户端
            PrintWriter out = response.getWriter();
            out.write(str);
            out.flush();
            out.close();
            //request.setAttribute("flag",flag);
            //request.getRequestDispatcher(request.getContextPath()+"/jsp/itemsdetails.jsp").forward(request,response);
            //response.sendRedirect(request.getContextPath()+"/jsp/itemsdetails.jsp");

        }else {
            userLike = 0;

            //将数据封装进Gson中
            String str = gson.toJson(userLike);
            //将json数据，响应至客户端
            PrintWriter out = response.getWriter();
            out.write(str);
            out.flush();
            out.close();
            //request.getRequestDispatcher(request.getContextPath()+"/jsp/itemsdetails.jsp").forward(request,response);
           //request.setAttribute("flag",flag);
          // response.sendRedirect(request.getContextPath()+"/jsp/itemsdetails.jsp");

        }
*/

    }
}
