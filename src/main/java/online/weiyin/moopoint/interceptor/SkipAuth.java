package online.weiyin.moopoint.interceptor;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * @Classname SkipAuth
 * @Description 绕过拦截器的自定义注解
 * @Version 1.0.0
 * @Date 2023/08/07 下午 07:56
 * @Created by 卢子昂
 */

@Target(value = {ElementType.TYPE, ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
public @interface SkipAuth {
}
