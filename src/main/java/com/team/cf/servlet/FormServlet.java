package com.team.cf.servlet;

import com.team.cf.entity.Items;
import com.team.cf.entity.Member;
import com.team.cf.service.impl.FormServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;
import java.util.UUID;

//使当前servlet支持文件上传功能
@MultipartConfig
@WebServlet(name = "FormServlet",urlPatterns = "/form")
public class FormServlet extends BasicServlet {
    FormServiceImpl service=new FormServiceImpl();
    protected void registerForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //用户真实姓名
        String realname = request.getParameter("realname");
        String email = request.getParameter("email");
        Object memberid = service.selectIdByEmail(email);

        System.out.println("email="+email);

        System.out.println("memberid="+memberid);
        //用户id存在 说明发起人存在 允许发起众筹
        if(memberid!=null){

            int id = Integer.parseInt(memberid.toString());
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
            if(part!=null){
                String oldName = part.getHeader("content-disposition");
                //oldName = form-data; name="photo"; filename="car1.png"
                System.out.println("oldName = "+oldName);

                //实际有上传图片
                if(oldName!=null && oldName.lastIndexOf(".")>0){
                    //制作新的名字 = 随机数 + 原图片的后缀名 .png
                    String newName = UUID.randomUUID()+oldName.substring(oldName.lastIndexOf("."),oldName.length()-1);

                    //项目图片设置
                    items.setPimgs("/img/"+newName);
                    //发起人id
                    items.setMemberid(id);
                    //写出上传的图片，至图片服务器路径
                    part.write("C:\\Users\\Lenovo\\Desktop\\imgs\\"+newName);
                }
            }


            boolean flag = service.registerProjectForm(items);
            System.out.println("flag = "+ flag);

            if (flag) {
                System.out.println("注册成功");
                request.setAttribute("items",items);
                System.out.println("Items = " + items);
                request.getRequestDispatcher("jsp/itemsreturn.jsp").forward(request,response);
            }else {
                request.setAttribute("msg","注册失败");
                request.getRequestDispatcher("jsp/notexist.jsp").forward(request,response);
            }
            //从数据库查不到名字叫。。的人
        }else{
            request.setAttribute("msg","该用户不存在,无法发起项目！！！");
            request.getRequestDispatcher(request.getContextPath()+"/jsp/notexist.jsp").forward(request,response);
        }
    }
}
