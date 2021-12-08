package com.team.cf.servlet;

import com.team.cf.entity.Items;
import com.team.cf.entity.ProjectReturn;
import com.team.cf.service.ProjectReturnService;
import com.team.cf.service.impl.FormServiceImpl;
import com.team.cf.service.impl.ItemsServiceImpl;
import com.team.cf.service.impl.ProjectReturnServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;



//使当前servlet支持文件上传功能
@MultipartConfig
@WebServlet(name = "ProjectReturnServlet",urlPatterns = "/projectReturn")
public class ProjectReturnServlet extends BasicServlet {
    private ProjectReturnService service=new ProjectReturnServiceImpl();
    private ItemsServiceImpl itemsService = new ItemsServiceImpl();
    private FormServiceImpl formService = new FormServiceImpl();
    //回报设置
    public void ProjectReturnForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //支持金额
        String supportmoney = request.getParameter("supportmoney");
        //回报内容
        String content = request.getParameter("content");
        //回报数量
        String count = request.getParameter("count");
        //运费
        String freight = request.getParameter("freight");
        //发票
        String invoice = request.getParameter("invoice");
        //回报时间
        String rtndate = request.getParameter("rtndate");
        //商品id
        String pid = request.getParameter("pid");

        System.out.println("pid="+pid);
        System.out.println("supportmoney="+supportmoney);
        System.out.println("content="+content);
        System.out.println("count="+count);
        System.out.println("freight="+freight);
        System.out.println("invoice="+invoice);
        System.out.println("rtndate="+rtndate);


        ProjectReturn pr = new ProjectReturn();
        pr.setProjectid(Integer.parseInt(pid));
        pr.setSupportmoney(Integer.parseInt(supportmoney));
        pr.setCount(Integer.parseInt(count));
        pr.setContent(content);
        pr.setFreight(Integer.parseInt(freight));
        pr.setInvoice(invoice);
        pr.setRtndate( Integer.parseInt(rtndate));

        Boolean flag = service.insertReturn(pr);
        System.out.println("flag="+flag);

        if(flag){
            //把回报设置为请求属性 回显在下个页面
            request.setAttribute("pr",pr);
            request.setAttribute("pid",pid);
            request.getRequestDispatcher("jsp/itemsreturn.jsp").forward(request,response);
        } else {
            request.setAttribute("msg","添加失败");
            request.getRequestDispatcher("jsp/itemsreturn.jsp").forward(request, response);

        }
    }
    //修改回报设置
    public void ModifyReturnForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
        //限购数量
        String shuliang = request.getParameter("shuliang");

        HttpSession session=request.getSession();
        Object itemsid1 = session.getAttribute("itemsid");
        System.out.println("itemsid1="+itemsid1);
        //限购数量
        String purchase = null;
        if (shuliang == null | shuliang.equals("")) {
            shuliang = "0";
        }
        if (xiangou.equals("0")) {
            purchase = "0";
        } else {
            purchase = shuliang;
        }
        //运费
        String freight = request.getParameter("freight");
        //发票
        String invoice = request.getParameter("invoice");
        //回报时间
        String rtndate = request.getParameter("rtndate");


        String itemsid = request.getParameter("itemsid");

        System.out.println("itemsid="+itemsid);

        System.out.println("type=" + type);
        System.out.println("supportmoney=" + supportmoney);
        System.out.println("content=" + content);
        System.out.println("picture=" + picture);
        System.out.println("count=" + count);
        System.out.println("xiangou=" + xiangou);
        System.out.println("shuliang=" + shuliang);
        System.out.println("purchase=" + purchase);
        System.out.println("freight=" + freight);
        System.out.println("invoice=" + invoice);
        System.out.println("rtndate=" + rtndate);

        ProjectReturn pr = new ProjectReturn(

                Integer.parseInt(itemsid),
                type,
                Integer.parseInt(supportmoney),

                content,
                Integer.parseInt(count),
                Integer.parseInt(xiangou),
                Integer.parseInt(purchase),

                Integer.parseInt(freight),
                invoice,
                Integer.parseInt(rtndate)
        );
        Boolean flag = service.updateReturn(pr);
        System.out.println("flag=" + flag);
        if (flag) {
            //把回报设置为请求属性 回显在下个页面
            request.setAttribute("pr", pr);

            request.getRequestDispatcher("jsp/itemsreturn.jsp").forward(request, response);
        } else {
            request.setAttribute("msg","修改失败");
            request.getRequestDispatcher("jsp/itemsreturn.jsp").forward(request, response);

        }
    }
    //上一步
    public void PreviousReturnForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //商品id
        String pid = request.getParameter("pid");
        Items items = itemsService.findItemsById(pid);
        if (items!=null){
            boolean b = formService.delProjectForm(items.getId());
            if (b){
                request.getRequestDispatcher("jsp/itemsInitiator.jsp").forward(request,response);
            }
        }

    }


}
