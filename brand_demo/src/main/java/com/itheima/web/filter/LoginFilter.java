package com.itheima.web.filter;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * 登录验证的过滤器
 */
@WebFilter("/*")
public class LoginFilter implements Filter {
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest req = (HttpServletRequest) request;

        //判断访问资源是否与登陆注册有关
        String[] urls = {"/login.jsp","/img/","/css/","/loginServlet","/register.jsp","/registerServlet"};
        String url = req.getRequestURI().toString();
        //
        for (String u : urls) {
            if(url.contains(u)){
                //放行
                chain.doFilter(request, response);

                return;
            }
        }
        //判断session中是否有user
        HttpSession session = req.getSession();
        Object user = session.getAttribute("user");

        //判断user是否为null
        if(user != null){
            //放行
            chain.doFilter(request, response);
        }else {
            //没有登录，进行拦截
            req.setAttribute("login_msg","你尚未登录");
            req.getRequestDispatcher("/login.jsp").forward(request,response);
        }


    }
    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }


}
