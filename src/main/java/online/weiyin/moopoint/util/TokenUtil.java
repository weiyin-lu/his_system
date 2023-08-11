package online.weiyin.moopoint.util;

import cn.hutool.core.date.DateUtil;
import cn.hutool.jwt.JWT;
import cn.hutool.jwt.JWTUtil;
import online.weiyin.moopoint.entity.dto.DoctorDTO;

/**
 * @Classname TokenUtil
 * @Description token生成工具类
 * @Version 1.0.0
 * @Date 2023/08/07 下午 05:44
 * @Created by 卢子昂
 */
public class TokenUtil {

    private static final byte[] key = "moopoint".getBytes();
//    创建token
    public static String getToken(DoctorDTO doctorInfo) {
        return JWT.create()
                .setPayload("info",doctorInfo)
                .setIssuedAt(DateUtil.date()) //现在签发
                .setExpiresAt(DateUtil.offsetHour(DateUtil.date(),1)) //有效期一小时
//                .setExpiresAt(DateUtil.offsetMinute(DateUtil.date(),1))// 有效期一分钟，测试用
                .setKey(key)
                .sign();
    }
//    验证token
    public static boolean verify(String token) {
        return JWT.of(token).setKey(key).validate(0);
    }
//    解析token
    public static Object parseToken(String token) {
        JWT jwt = JWTUtil.parseToken(token);
        return jwt.getPayload("info");
    }
}
