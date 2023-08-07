package online.weiyin.moopoint.config;

import online.weiyin.moopoint.interceptor.AuthInterceptor;
import org.springframework.context.annotation.Configuration;
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

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new AuthInterceptor());

    }
}
