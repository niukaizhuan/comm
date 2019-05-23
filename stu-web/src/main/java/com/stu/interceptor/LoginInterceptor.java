package com.stu.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.stu.pojo.User;

/**
 * 登录拦截
 *
 * @author Administrator
 */
public class LoginInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        //获取请求URL
        String url = request.getRequestURI();
        System.out.println("进入拦截器,url=" + url);
        //URL:除了登录请求外,其他的URL都进行拦截
        if (url.contains("/login")) {
            return true;
        }
        if (url.equals("/")) {
            return true;
        }
        //获取Session
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        //判断Session中是否有用户数据,如果有,则返回true
        if (user != null) {
            System.out.println("登录成功" + url);
            return true;
        }
        //不符合条件的给出提示信息,并转发到登录页面
        System.out.println("被拦截的url=" + url);
        request.setAttribute("msg", "你还没有登录,请先登录!");
        request.getRequestDispatcher("/WEB-INF/jsp/system/login.jsp").forward(request, response);
        return false;

    }

    @Override
    public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
            throws Exception {
        // TODO Auto-generated method stub

    }

    @Override
    public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
            throws Exception {
        // TODO Auto-generated method stub

    }


}
