package online.weiyin.moopoint;

import cn.hutool.jwt.JWTUtil;
import cn.hutool.jwt.JWTValidator;
import online.weiyin.moopoint.util.TokenUtil;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

/**
 * @Classname TokenTest
 * @Description token类测试
 * @Version 1.0.0
 * @Date 2023/08/07 下午 05:51
 * @Created by 卢子昂
 */
@SpringBootTest
public class TokenTest {

    @Test
    public void createTest() {
        String token = TokenUtil.getToken("小明");
        System.out.println(token);
    }

    @Test
    public void verifyTest() {
        String token = TokenUtil.getToken("小明");
        System.out.println(token);
        System.out.println(TokenUtil.verify(token));
    }
}
