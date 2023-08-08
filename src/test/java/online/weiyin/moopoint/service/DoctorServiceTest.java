package online.weiyin.moopoint.service;

import online.weiyin.moopoint.entity.dto.DoctorDTO;
import online.weiyin.moopoint.service.impl.DoctorServiceImpl;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

/**
 * @Classname DoctorServiceTest
 * @Description DoctorService测试
 * @Version 1.0.0
 * @Date 2023/08/08 下午 09:43
 * @Created by 卢子昂
 */
@SpringBootTest
public class DoctorServiceTest {

    @Autowired
    DoctorServiceImpl doctorService;
    @Test
    public void test01() {
        List<DoctorDTO> doctorDTOS = doctorService.selectDoctorList();
        System.out.println(doctorDTOS);
    }
}
