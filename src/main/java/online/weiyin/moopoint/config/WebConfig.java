package online.weiyin.moopoint.config;

import online.weiyin.moopoint.interceptor.AuthInterceptor;
import online.weiyin.moopoint.interceptor.CORSInterceptor;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * @Classname WebConfig
 * @Description Web配置类
 * @Version 1.0.0
 * @Date 2023/08/07 下午 08:03
 * @Created by 卢子昂
 */
@Configuration
public class WebConfig implements WebMvcConfigurer {

//    拦截器
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new CORSInterceptor()).addPathPatterns("/**"); //跨域拦截器，必须在最上边
        registry.addInterceptor(new AuthInterceptor()); //token拦截器，测试时可以注释掉
    }
}
