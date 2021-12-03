package com.team.cf.servlet;

import com.team.cf.entity.ProjectReturn;
import com.team.cf.service.ProjectReturnService;
import com.team.cf.service.impl.ProjectReturnServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
//使当前servlet支持文件上传功能
@MultipartConfig
@WebServlet(name = "ProjectReturnServlet",urlPatterns = "/projectReturn")
public class ProjectReturnServlet extends BasicServlet {
    ProjectReturnService service=new ProjectReturnServiceImpl();
    protected void ProjectReturnForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //回报类型
        String type = request.getParameter("type");
        //支持金额
        String supportmoney = request.getParameter("supportmoney");
        //回报内容
        String content = request.getParameter("content");
        //说明图片
        String picture = request.getParameter("picture");
        //回报数量
        String count = request.getParameter("count");
        //单笔限购
        String xiangou = request.getParameter("xiangou");
        //运费
        String freight = request.getParameter("freight");
        //发票
        String invoice = request.getParameter("invoice");
        //回报时间

        String rtndate = request.getParameter("rtndate");
        String projectid = request.getParameter("items");
        System.out.println("projectid="+projectid);

        ProjectReturn pr=new ProjectReturn(
                /*Integer.parseInt(projectid),*/
                type,
                Integer.parseInt(supportmoney),
                content,
                Integer.parseInt(count),
                Integer.parseInt(xiangou),
                Integer.parseInt(freight),
                invoice,
                Integer.parseInt(rtndate)
        );
        Boolean flag = service.insertReturn(pr);
        System.out.println("flag="+flag);
    }
}
