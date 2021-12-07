package com.team.cf.servlet;

import com.team.cf.entity.Items;
import com.team.cf.entity.Member;
import com.team.cf.service.FormService;
import com.team.cf.service.impl.FormServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Objects;
import java.util.UUID;

//使当前servlet支持文件上传功能
@MultipartConfig
@WebServlet(name = "FormServlet",urlPatterns = "/form")
public class FormServlet extends BasicServlet {
    FormService service=new FormServiceImpl();
    protected void registerForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("registerForm执行了");
        String loginacct = request.getParameter("loginacct");
        String email = request.getParameter("email");

        //String realname = service.selectRealNameByEmail(email);

        System.out.println("email="+email);
        //System.out.println("realname="+realname);
        System.out.println("loginacct="+loginacct);

       //账户邮箱不能为空
        if(loginacct!=null&& !loginacct.equals("") &&email!=null&& !email.equals("")) {
            Member member = service.selectOneByEmailAndLoginAcct(email, loginacct);
            //发起人存在 允许发起众筹
            if(member!=null){
                //用户id
                /*Object memberid = service.selectIdByLoginAcct(loginacct);
                int id = Integer.parseInt(memberid.toString());
                System.out.println("memberid="+memberid);
                */
                HttpSession session = request.getSession();
                Member user = (Member)session.getAttribute("member");

                //项目分类信息
                String type = request.getParameter("type");
                System.out.println("type = "+type);
                //项目名
                String itemsname = request.getParameter("itemsname");
                System.out.println("itemsname = "+itemsname);
                //筹集金额
                String money = request.getParameter("money");
                System.out.println("money = "+money);
                //筹集天数
                String moneyday = request.getParameter("moneyday");
                System.out.println("moneyday = "+moneyday);
                //项目详情
                String itemsremark = request.getParameter("itemsremark");
                System.out.println("itemsremark = "+itemsremark);

                Items items=new Items(itemsname,itemsremark,(double)Integer.parseInt(money),Integer.parseInt(moneyday),Integer.parseInt(type));
                //获取表单中上传的文件信息（先获取普通域，再获取文件上传的信息）
                Part part = request.getPart("itemspicture");
                String newName=null;
                if(part!=null){
                    String oldName = part.getHeader("content-disposition");
                    //oldName = form-data; name="photo"; filename="car1.png"
                    System.out.println("oldName = "+oldName);

                    //实际有上传图片
                    if(oldName!=null && oldName.lastIndexOf(".")>0){
                        //制作新的名字 = 随机数 + 原图片的后缀名 .png
                        newName = UUID.randomUUID()+oldName.substring(oldName.lastIndexOf("."),oldName.length()-1);

                        //项目图片设置
                        items.setPimgs("itemsimgs/"+newName);
                        //发起人id
                        items.setMemberid(user.getId());

                        //写出上传的图片，至图片服务器路径
                        part.write(request.getContextPath()+"\\itemsimgs"+newName);
                        System.out.println(request.getContextPath()+"\\itemsimgs"+newName);
                    }
                }

               /* session.setAttribute("type",type);
                session.setAttribute("itemsname",itemsname);
                session.setAttribute("money",money);
                session.setAttribute("moneyday",moneyday);
                session.setAttribute("picture",(request.getContextPath()+"\\itemsimgs"+newName));
                session.setAttribute("itemsremark",itemsremark);
                session.setAttribute("loginacct",loginacct);
                session.setAttribute("email",email);
                session.setAttribute("items",items);

                request.getRequestDispatcher("jsp/itemsreturn.jsp").forward(request,response);*/
                boolean flag = service.registerProjectForm(items);
                System.out.println("flag = "+ flag);

                if (flag) {
                    System.out.println("发起成功");
                    int itemsid = service.selectIdByProjectName(itemsname);
                    System.out.println("itemsid="+itemsid);
                    request.setAttribute("itemsid",itemsid);
                    request.getSession().setAttribute("itemsid",itemsid);
                    System.out.println("Items = " + items);

                    session.setAttribute("type",type);
                    session.setAttribute("itemsname",itemsname);
                    session.setAttribute("money",money);
                    session.setAttribute("moneyday",moneyday);
                    session.setAttribute("picture",(request.getContextPath()+"\\itemsimgs"+newName));
                    session.setAttribute("itemsremark",itemsremark);
                    session.setAttribute("loginacct",loginacct);
                    session.setAttribute("email",email);
                    session.setAttribute("items",items);

                    request.getRequestDispatcher("jsp/itemsreturn.jsp").forward(request,response);
                }else {
                    request.setAttribute("msg","发起失败");
                    request.getRequestDispatcher("jsp/notexist.jsp").forward(request,response);
                }
                //从数据库查不到名字叫。。的人
            }else{
                request.setAttribute("msg","账户或邮箱错误，无法发起项目！！！");
                request.getRequestDispatcher(request.getContextPath()+"/jsp/notexist.jsp").forward(request,response);
            }
        }else{
            request.setAttribute("msg","账户或邮箱为空，无法发起项目");
            request.getRequestDispatcher(request.getContextPath()+"/jsp/notexist.jsp").forward(request,response);
        }
    }
    //校验项目是否存在
    public void validateName(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{

        System.out.println("validatename执行了");
        String itemsname = request.getParameter("itemsname");

        System.out.println("itemsname = "+itemsname);
        //true不可用  false可用
        boolean flag = service.validateProjectName(itemsname);
        System.out.println("flag = "+flag);
        String msg = "{\"flag\":"+flag+"}";
        PrintWriter out = response.getWriter();
        out.write(msg);
        out.flush();
        out.close();
    }
}
