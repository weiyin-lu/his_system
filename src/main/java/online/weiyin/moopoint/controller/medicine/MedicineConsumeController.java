package online.weiyin.moopoint.controller.medicine;

import cn.hutool.json.JSONUtil;
import online.weiyin.moopoint.entity.common.Result;
import online.weiyin.moopoint.entity.Consume;
import online.weiyin.moopoint.entity.Patient;
import online.weiyin.moopoint.service.impl.ConsumeServiceImpl;
import online.weiyin.moopoint.service.impl.PatientServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @Classname MedicineCheckoutConsumeController
 * @Description consume药品相关
 * @Version 1.0.0
 * @Date 2023/8/9 16:35
 * @Created by 陈浩东
 */
@RestController
@RequestMapping("/medicines")
public class MedicineConsumeController {

    @Autowired
    private ConsumeServiceImpl consumeService;
    @Autowired
    private PatientServiceImpl patientService;

    //    展示有需要处理药房信息的病人概要信息
    @GetMapping("/")
    @ResponseBody
    public String getCheckoutList() {
        List<Patient> patients = patientService.selectConsumeMedicineList();
        return JSONUtil.toJsonPrettyStr(Result.ok(patients));
    }
    //    展示病人需要处理的详细药品信息
    @GetMapping("/{recordId}")
    @ResponseBody
    public String getCheckoutInfo(@PathVariable int recordId) {
        List<Consume> consumes = consumeService.selectMedicineByRecordId(recordId);
        return JSONUtil.toJsonPrettyStr(Result.ok(consumes));
    }

}
