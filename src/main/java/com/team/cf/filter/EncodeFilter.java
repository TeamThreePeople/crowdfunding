package com.team.cf.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;
import java.io.IOException;


@WebFilter(filterName = "f1",urlPatterns = "/*",initParams = {@WebInitParam(name = "encode",value = "utf8")})
public class EncodeFilter implements Filter {

    private String encode;

    //初始化方法
    public void init(FilterConfig config) throws ServletException {
        encode = config.getInitParameter("encode");
        System.out.println("EncodeFilter 初始化 "+encode);
    }

    public EncodeFilter(){
        System.out.println("EncodeFilter 实例化");
    }

    //销毁方法
    public void destroy() {
        System.out.println("EncodeFilter 销毁");
    }

    /**
     * 过滤方法
     * @param req   请求
     * @param resp  响应
     * @param chain 过滤链
     * @throws ServletException
     * @throws IOException
     */

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        System.out.println("EncodeFilter doFilter...");

        //对请求做中文友好
        req.setCharacterEncoding(encode);
        //对响应做中文友好
        //resp.setContentType("text/html;charset="+encode);
        resp.setCharacterEncoding(encode);

        //过滤链  链接到下一个资源，下一个资源：可能是过滤器，也可能是目标资源
        chain.doFilter(req, resp);
    }



}

