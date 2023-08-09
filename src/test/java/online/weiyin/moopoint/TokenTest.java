package online.weiyin.moopoint;

import cn.hutool.jwt.JWTUtil;
import cn.hutool.jwt.JWTValidator;
import online.weiyin.moopoint.entity.dto.DoctorDTO;
import online.weiyin.moopoint.service.impl.DoctorServiceImpl;
import online.weiyin.moopoint.util.TokenUtil;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
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

    @Autowired
    DoctorServiceImpl doctorService;

    @Test
    public void createTest() {
        DoctorDTO doctorDTO = doctorService.selectDoctorById(22);
        String token = TokenUtil.getToken(doctorDTO);
        System.out.println(token);
    }

    @Test
    public void verifyTest() {
        String token = TokenUtil.getToken(doctorService.selectDoctorById(22));
        System.out.println(token);
        System.out.println(TokenUtil.verify(token));
    }
}
