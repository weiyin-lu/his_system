package online.weiyin.moopoint.controller.outpatient;

import cn.hutool.json.JSONUtil;
import com.mybatisflex.core.query.QueryWrapper;
import online.weiyin.moopoint.entity.Consume;
import online.weiyin.moopoint.entity.common.Result;
import online.weiyin.moopoint.entity.dto.CheckOutDTO;
import online.weiyin.moopoint.service.impl.ConsumeServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

import static online.weiyin.moopoint.entity.table.ConsumeTableDef.CONSUME;

/**
 * @Classname PatientConsumeController
 * @Description 挂号二级付退费业务（consume相关）
 * @Version 1.0.0
 * @Date 2023/08/10 上午 09:52
 * @Created by 卢子昂
 */
@RestController
@RequestMapping("/patients/consume")
public class PatientConsumeController {
    @Autowired
    ConsumeServiceImpl consumeService;

//    查询挂号信息下的处方处置信息
    @GetMapping("/{recordId}")
    @ResponseBody
    public String searchPatientConsumeByRecordId(@PathVariable int recordId) {
        QueryWrapper where = QueryWrapper.create()
                .where(CONSUME.RECORD_ID.eq(recordId));
        List<Consume> list = consumeService.list(where);
        return JSONUtil.toJsonPrettyStr(Result.ok(list));
    }
//    支付指定处方处置信息的费用
    @GetMapping("/pay/{id}")
    @ResponseBody
    public String payConsume(@PathVariable int id) {
        boolean b = consumeService.updatePayment(id);
        if (b) {
            return JSONUtil.toJsonPrettyStr(Result.success());
        } else {
            return JSONUtil.toJsonPrettyStr(Result.fail("操作失败"));
        }
    }
//    退费（必须有医技/药房医生操作退药/退处置后才能退费）
    @GetMapping("/back/{id}")
    @ResponseBody
    public String unpayConsume(@PathVariable int id) {
        boolean b = consumeService.checkTakeMed(id);
        boolean b1 = consumeService.checkPayment(id);
        if(b && b1) {
            CheckOutDTO dto = new CheckOutDTO();
            dto.setId(id);
            dto.setResults("退费");
            boolean b2 = consumeService.updateResultById(dto);
            if (b2) {
                return JSONUtil.toJsonPrettyStr(Result.success());
            } else {
                return JSONUtil.toJsonPrettyStr(Result.fail("操作失败"));
            }
        } else {
            return JSONUtil.toJsonPrettyStr(Result.fail("退费失败，未退药品/处置"));
        }
    }
}
