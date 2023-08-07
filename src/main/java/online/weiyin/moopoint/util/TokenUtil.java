package online.weiyin.moopoint.util;

import cn.hutool.core.date.DateUtil;
import cn.hutool.jwt.JWT;
import cn.hutool.jwt.JWTUtil;
import cn.hutool.jwt.JWTValidator;

import java.util.Date;

/**
 * @Classname TokenUtil
 * @Description token生成工具类
 * @Version 1.0.0
 * @Date 2023/08/07 下午 05:44
 * @Created by 卢子昂
 */
public class TokenUtil {

    private static final byte[] key = "moopoint".getBytes();

    public static String getToken(String name) {
        return JWT.create()
                .setPayload("name",name)
                .setIssuedAt(DateUtil.date()) //现在签发
                .setExpiresAt(DateUtil.offsetHour(DateUtil.date(),1)) //有效期一小时
//                .setExpiresAt(DateUtil.offsetMinute(DateUtil.date(),1))// 有效期一分钟，测试用
                .setKey(key)
                .sign();
    }

    public static boolean verify(String token) {
        return JWT.of(token).setKey(key).validate(0);
    }

}
