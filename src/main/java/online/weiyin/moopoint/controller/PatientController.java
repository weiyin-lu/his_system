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

//  查询所有挂号记录
    @GetMapping("/")
    @ResponseBody
    public String getPatientList() {

        List<Patient> list = patientService.list();
        return JSONUtil.toJsonPrettyStr(Result.ok(list));
    }

//  根据指定条件查询挂号信息
    @PostMapping("/")
    @ResponseBody
    public String searchPatientByCondi(@RequestParam Map<String,Object> condition) {

        condition.values().removeAll(Collections.singleton(""));
        List<Patient> patients = patientService.listByMap(condition);
        return JSONUtil.toJsonPrettyStr(Result.ok(patients));
    }

    /**
     * 不建议在挂号功能中提供删除功能
     * 卢子昂_2023.08.07_20:34
     */
//  删除订单
//    @PostMapping("/remove")
//    @ResponseBody
//    public String removePatient(int id) {
//
//        boolean remove = patientService.removeById(id);
//        if (remove) {
//            return JSONUtil.toJsonPrettyStr(Result.success());
//        } else {
//            return JSONUtil.toJsonPrettyStr(Result.fail("删除失败"));
//        }
//    }
/** 需要细化此功能 卢子昂_2023.08.07_20:34 */
//  修改挂号信息
    @PostMapping("update")
    @ResponseBody
    public String updatePatient(Patient patient) {

        boolean update = patientService.updateById(patient);
        if (update) {
            return JSONUtil.toJsonPrettyStr(Result.success());
        } else {
            return JSONUtil.toJsonPrettyStr(Result.fail("修改失败"));
        }
    }

//  挂号
    @PostMapping("add")
    @ResponseBody
    public String addPatient(Patient patient) {

        boolean save = patientService.save(patient);
        if (save) {
            return JSONUtil.toJsonPrettyStr(Result.success());
        } else {
            return JSONUtil.toJsonPrettyStr(Result.fail("添加失败"));
        }
    }

}