package online.weiyin.moopoint.controller.medicine;

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

//  展示有需要处理药房信息的病人概要信息
    @GetMapping("/")
    @ResponseBody
    public String getCheckoutList() {
        List<Patient> patients = patientService.selectConsumeMedicineList();
        return JSONUtil.toJsonPrettyStr(Result.ok(patients));
    }
//  展示病人需要处理的详细药品信息
    @GetMapping("/{recordId}")
    @ResponseBody
    public String getCheckoutInfo(@PathVariable int recordId) {
        List<Consume> consumes = consumeService.selectMedicineByRecordId(recordId);
        return JSONUtil.toJsonPrettyStr(Result.ok(consumes));
    }

//  发药，必须为已付款状态才能开始发药
//  两个关于consume判定是否付款进行操作的代码完全一样，是否可以优化
    @GetMapping("/start/{id}")
    @ResponseBody
    public String startCheckout(@PathVariable int id) {
        boolean b = consumeService.checkPayment(id);
        if (b) {
            boolean b1 = consumeService.updateExecute(id,1);
            if (b1) {
                return JSONUtil.toJsonPrettyStr(Result.success());
            } else {
                return JSONUtil.toJsonPrettyStr(Result.fail("操作失败"));
            }
        } else {
            return JSONUtil.toJsonPrettyStr(Result.fail("未付款"));
        }
    }

//  退药
    @GetMapping("/back/{id}")
    @ResponseBody
    public String backMedicine(@PathVariable int id) {
        boolean b = consumeService.checkPayment(id);
        if (b) {
            boolean b1 = consumeService.updateExecute(id,0);
//          退药标记
            boolean b2 = consumeService.updateTakeMed(1);
            if (b1 && b2) {
                return JSONUtil.toJsonPrettyStr(Result.success());
            } else {
                return JSONUtil.toJsonPrettyStr(Result.fail("操作失败"));
            }
        } else {
            return JSONUtil.toJsonPrettyStr(Result.fail("未付款"));
        }
    }


}
