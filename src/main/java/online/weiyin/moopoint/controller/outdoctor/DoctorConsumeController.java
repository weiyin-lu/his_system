package online.weiyin.moopoint.controller.outdoctor;

import cn.hutool.json.JSONUtil;
import online.weiyin.moopoint.entity.Consume;
import online.weiyin.moopoint.entity.common.Result;
import online.weiyin.moopoint.service.impl.ConsumeServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Date;

/**
 * @Classname DoctorConsumeController
 * @Description 门诊医生发送请求订单业务
 * @Version 1.0.0
 * @Date 2023/8/10 18:59
 * @Created by 陈浩东
 */
@RestController
@RequestMapping("/doctors/consume")
public class DoctorConsumeController {
    @Autowired
    private ConsumeServiceImpl consumeService;

//  医生选择药品发到患者要支付的订单表
//  set的是不为空但用户不穿的数据
//  也可以作为医生选择检查发到患者订单表的方法
    @PutMapping("/choose")
    @ResponseBody
    public String doctorChoose(@RequestBody Consume consume) {
        consume.setCharge(1);
        consume.setTime(new Date());
        boolean b = consumeService.saveOrUpdate(consume);
        if (b) {
            return JSONUtil.toJsonPrettyStr(Result.success());
        } else {
            return JSONUtil.toJsonPrettyStr(Result.fail("操作失败"));
        }
    }


}
