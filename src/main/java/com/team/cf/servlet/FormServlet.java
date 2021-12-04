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
import java.util.Objects;
import java.util.UUID;

//使当前servlet支持文件上传功能
@MultipartConfig
@WebServlet(name = "FormServlet",urlPatterns = "/form")
public class FormServlet extends BasicServlet {
    FormServiceImpl service=new FormServiceImpl();
    protected void registerForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");

        Object memberid = service.selectIdByEmail(email);
        String realname = service.selectRealNameByEmail(email);

        System.out.println("email="+email);
        System.out.println("realname="+realname);
        System.out.println("name="+name);
        System.out.println("memberid="+memberid);
        System.out.println(Objects.equals(name,realname));
        //用户id存在且真实姓名存在 说明发起人存在 允许发起众筹
        if(memberid!=null && memberid!="" && realname!=null && !realname.equals("")){

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
                        items.setPimgs("itemsimgs/"+newName);
                        //发起人id
                        items.setMemberid(id);
                        //写出上传的图片，至图片服务器路径
                        part.write(request.getContextPath()+"\\itemsimgs"+newName);
                        System.out.println(request.getContextPath()+"\\itemsimgs"+newName);
                    }
                }
                boolean flag = service.registerProjectForm(items);
                System.out.println("flag = "+ flag);

                if (flag) {
                    System.out.println("发起成功");
                    int itemsid = service.selectIdByProjectName(itemsname);
                    System.out.println("itemsid="+itemsid);
                    request.setAttribute("itemsid",itemsid);
                    System.out.println("Items = " + items);
                    request.getRequestDispatcher("jsp/itemsreturn.jsp").forward(request,response);
                }else {
                    request.setAttribute("msg","发起失败");
                    request.getRequestDispatcher("jsp/notexist.jsp").forward(request,response);
                }

            //从数据库查不到名字叫。。的人
        }else{
            request.setAttribute("msg","用户不存在，无法发起项目！！！");
            request.getRequestDispatcher(request.getContextPath()+"/jsp/notexist.jsp").forward(request,response);
        }
    }
}
