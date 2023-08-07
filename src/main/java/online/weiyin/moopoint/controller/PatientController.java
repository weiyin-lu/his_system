package online.weiyin.moopoint.controller;

import cn.hutool.json.JSONUtil;
import online.weiyin.moopoint.common.Result;
import online.weiyin.moopoint.entity.Patient;
import online.weiyin.moopoint.service.impl.PatientServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Collections;
import java.util.List;
import java.util.Map;

/**
 * @Classname PatientController
 * @Description 挂号管理业务
 * @Version 1.0.0
 * @Date 2023/8/7 18:18
 * @Created by 陈浩东
 */
@RestController
@RequestMapping("/patients")
public class PatientController {
    @Autowired
    PatientServiceImpl patientService;

//  查询所有订单
    @GetMapping("/")
    @ResponseBody
    public String getPatientList() {
        List<Patient> list = patientService.list();
        return JSONUtil.toJsonPrettyStr(Result.ok(list));
    }

//  根据指定条件查询订单
    @PostMapping("/")
    @ResponseBody
    public String searchPatientByCondi(@RequestParam Map<String,Object> condition) {
        condition.values().removeAll(Collections.singleton(""));
        List<Patient> patients = patientService.listByMap(condition);
        return JSONUtil.toJsonPrettyStr(Result.ok(patients));
    }

}
