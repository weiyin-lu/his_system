package online.weiyin.moopoint.controller.checkout;

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
 * @Classname NodrugCheckoutConsumeController
 * @Description consume医技相关
 * @Version 1.0.0
 * @Date 2023/08/09 下午 04:33
 * @Created by 卢子昂
 */
@RestController
@RequestMapping("/checkouts")
public class CheckoutConsumeController {
    @Autowired
    private ConsumeServiceImpl consumeService;
    @Autowired
    private PatientServiceImpl patientService;

//    展示有需要处理医技信息的病人概要信息
    @GetMapping("/")
    @ResponseBody
    public String getCheckoutList() {
        List<Patient> patients = patientService.selectConsumeCheckoutPatientList();
        return JSONUtil.toJsonPrettyStr(Result.ok(patients));
    }
//    展示病人需要处理的详细医技信息
    @GetMapping("/{recordId}")
    @ResponseBody
    public String getCheckoutInfo(@PathVariable int recordId) {
        List<Consume> consumes = consumeService.selectCheckoutListByRecordId(recordId);
        return JSONUtil.toJsonPrettyStr(Result.ok(consumes));
    }



}
