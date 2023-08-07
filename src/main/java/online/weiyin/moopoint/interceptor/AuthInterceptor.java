package online.weiyin.moopoint.interceptor;

import cn.hutool.json.JSONUtil;
import online.weiyin.moopoint.common.Result;
import online.weiyin.moopoint.util.TokenUtil;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.lang.reflect.Method;

/**
 * @Classname AuthInterceptor
 * @Description 全局认证拦截器
 * @Version 1.0.0
 * @Date 2023/08/07 下午 07:45
 * @Created by 卢子昂
 */
public class AuthInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request,
                             HttpServletResponse response, Object handler)
            throws Exception {
//        设置响应字符编码，用于在拦截器返回时返回中文
        response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json; charset=utf-8");

//        从请求头获取token
        String token = request.getHeader("token");
//        放行策略，带自定义注解的方法直接放行
        HandlerMethod handlerMethod= (HandlerMethod) handler;
        Method method=handlerMethod.getMethod();
        if (method.isAnnotationPresent(SkipAuth.class)) {
            return true;
        }
//        token有效性检查
        try {
            boolean verify = TokenUtil.verify(token);
            if (verify) {
                return true;
            }
            else {
                response.getWriter().println(
                        JSONUtil.toJsonPrettyStr(Result.fail("令牌已失效")));
                return false;
            }
        } catch (Exception e) {
            response.getWriter().println(
                    JSONUtil.toJsonPrettyStr(Result.error(e.getMessage())));
            return false;
        }
    }

}
