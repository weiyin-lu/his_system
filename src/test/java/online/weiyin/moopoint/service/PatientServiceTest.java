package online.weiyin.moopoint.service;

import cn.hutool.json.JSONUtil;
import online.weiyin.moopoint.entity.Patient;
import online.weiyin.moopoint.service.impl.PatientServiceImpl;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

/**
 * @Classname PatientServiceTest
 * @Description 医技相关复合功能测试类
 * @Version 1.0.0
 * @Date 2023/08/09 下午 05:01
 * @Created by 卢子昂
 */
@SpringBootTest
class PatientServiceTest {

    @Autowired
    PatientServiceImpl patientService;
    @Test
    void selectConsumeCheckoutPatientList() {
        List<Patient> patients = patientService.selectConsumeCheckoutPatientList();
        System.out.println(JSONUtil.toJsonPrettyStr(patients));
    }
}