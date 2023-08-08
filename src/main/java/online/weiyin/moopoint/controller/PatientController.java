package online.weiyin.moopoint.controller;

import cn.hutool.core.date.DateUtil;
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
//  需要细化此接口 卢子昂_2023.08.07_20:34
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

//    支付费用
    @GetMapping("/pay/{id}")
    @ResponseBody
    public String pay(@PathVariable Integer id) {
//        支付后的固定值：设置状态为就诊中
        Patient patient = new Patient();
        patient.setId(id);
        patient.setState("就诊中");
        boolean update = patientService.updateById(patient);
        if (update) {
            return JSONUtil.toJsonPrettyStr(Result.success());
        } else {
            return JSONUtil.toJsonPrettyStr(Result.fail("操作失败"));
        }
    }

    //    退号
    @GetMapping("/unpay/{id}")
    @ResponseBody
    public String uppay(@PathVariable Integer id) {
//        查找退号目标，如果不是就诊中，即可退号
//        操作逻辑是，如果病人看诊了之后也不满意，可以退号，需要门诊医生主动结束就诊状态
        Patient byId = patientService.getById(id);
        if(!"就诊中".equals(byId.getState())) {
            byId.setState("退号");
            boolean update = patientService.updateById(byId);
            if (update) {
                return JSONUtil.toJsonPrettyStr(Result.success());
            } else {
                return JSONUtil.toJsonPrettyStr(Result.fail("操作失败"));
            }
        } else {
            return JSONUtil.toJsonPrettyStr(Result.fail("退号失败，已在就诊状态"));
        }
    }

//    挂号或修改
//    首次挂号时主键自动递增，修改时应当传入主键，否则会创建一条新的数据
    @PostMapping("/saveOrUpdate")
    @ResponseBody
    public String addPatient(@RequestBody Patient patient) {
//        强制设置挂号固定值
//        年龄
        patient.setAge(DateUtil.date().year() - DateUtil.year(patient.getBirthday()));
//        挂号时间
        patient.setPreciseTime(DateUtil.date());
//        费用类型
        patient.setSubject("挂号费");
//        就诊状态
        patient.setState("未看诊");
        boolean save = patientService.saveOrUpdate(patient);
        if (save) {
            return JSONUtil.toJsonPrettyStr(Result.success());
        } else {
            return JSONUtil.toJsonPrettyStr(Result.fail("添加失败"));
        }
    }

//     删除订单
//     不建议在挂号功能中提供删除功能
//     卢子昂_2023.08.07_20:34
    @Deprecated
    @ResponseBody
    public String removePatient(int id) {

        boolean remove = patientService.removeById(id);
        if (remove) {
            return JSONUtil.toJsonPrettyStr(Result.success());
        } else {
            return JSONUtil.toJsonPrettyStr(Result.fail("删除失败"));
        }
    }
}
