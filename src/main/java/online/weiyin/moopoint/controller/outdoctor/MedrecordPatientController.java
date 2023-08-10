package online.weiyin.moopoint.controller.outdoctor;

import cn.hutool.json.JSONUtil;
import com.mybatisflex.core.query.QueryWrapper;
import online.weiyin.moopoint.entity.Patient;
import online.weiyin.moopoint.entity.common.Result;
import online.weiyin.moopoint.service.impl.PatientServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

import static online.weiyin.moopoint.entity.table.PatientTableDef.PATIENT;

/**
 * @Classname MedrecordPatientController
 * @Description 门诊医生获知挂号信息业务
 * @Version 1.0.0
 * @Date 2023/08/10 下午 03:19
 * @Created by 卢子昂
 */
@RestController
@RequestMapping("/outdoctors/patient")
public class MedrecordPatientController {

    @Autowired
    PatientServiceImpl patientService;

//    根据医生ID获取挂此医生号的病人挂号信息
    @GetMapping("/{docId}")
    @ResponseBody
    public String searchPatientInfo(@PathVariable Integer docId) {
        QueryWrapper wrapper = QueryWrapper.create()
                .where(PATIENT.DOC_ID.eq(docId));
        List<Patient> list = patientService.list(wrapper);
        return JSONUtil.toJsonPrettyStr(Result.ok(list));
    }

//    结诊
    @GetMapping("/completed/{id}")
    @ResponseBody
    public String complete(int id) {
        Patient patient = new Patient();
        patient.setState("结诊");
        patient.setId(id);
        boolean b = patientService.updateById(patient);
        if (b) {
            return JSONUtil.toJsonPrettyStr(Result.success());
        } else {
            return JSONUtil.toJsonPrettyStr(Result.fail("操作失败"));
        }

    }
}
