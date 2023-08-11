package online.weiyin.moopoint.util;

import online.weiyin.moopoint.entity.dto.DoctorDTO;
import online.weiyin.moopoint.service.impl.DoctorServiceImpl;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.*;

/**
 * @Classname TokenUtilTest
 * @Description token测试类
 * @Version 1.0.0
 * @Date 2023/08/11 下午 07:28
 * @Created by 卢子昂
 */
@SpringBootTest
class TokenUtilTest {
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

    @Test
    public void parseTokenTest() {
        DoctorDTO doctorDTO = doctorService.selectDoctorById(22);
        String token = TokenUtil.getToken(doctorDTO);
        System.out.println(token);
        ;
        System.out.println(TokenUtil.parseToken(token));
    }
}