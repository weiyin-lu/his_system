package online.weiyin.moopoint.controller.checkout;

import cn.hutool.json.JSONUtil;
import online.weiyin.moopoint.entity.common.Result;
import online.weiyin.moopoint.entity.Consume;
import online.weiyin.moopoint.entity.Patient;
import online.weiyin.moopoint.entity.dto.CheckOutDTO;
import online.weiyin.moopoint.service.impl.ConsumeServiceImpl;
import online.weiyin.moopoint.service.impl.PatientServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @Classname CheckoutConsumeController
 * @Description consume医技相关
 * @Version 1.0.1
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
//    提交检查，必须为已付款状态才能开始检查
    @GetMapping("/start/{id}")
    @ResponseBody
    public String startCheckout(@PathVariable int id) {
        boolean b = consumeService.checkPayment(id);
        if (b) {
            boolean b1 = consumeService.updateExecute(id);
            if (b1) {
                return JSONUtil.toJsonPrettyStr(Result.success());
            } else {
                return JSONUtil.toJsonPrettyStr(Result.fail("操作失败"));
            }
        } else {
            return JSONUtil.toJsonPrettyStr(Result.fail("未付款"));
        }
    }
//    给出检查结果,执行状态必须为1
    @PutMapping("/")
    @ResponseBody
    public String updateResult(@RequestBody CheckOutDTO result) {
        boolean b = consumeService.updateResultById(result);
        if (b) {
            return JSONUtil.toJsonPrettyStr(Result.success());
        } else {
            return JSONUtil.toJsonPrettyStr(Result.fail("操作失败"));
        }
    }
}
