package online.weiyin.moopoint.controller.outdoctor;

import cn.hutool.core.date.DateUtil;
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
@RequestMapping("/outdoctors/consume")
public class DoctorConsumeController {
    @Autowired
    private ConsumeServiceImpl consumeService;

//    门诊医生创建consume订单
//    同时用于药房和医技
    @PutMapping("/choose")
    @ResponseBody
    public String doctorChoose(@RequestBody Consume consume) {
//        形参非常依赖record_id，是核心筛选项，必填
//        固定创建时间
        consume.setTime(DateUtil.date());
        try {
            boolean b = consumeService.saveOrUpdate(consume);
            if (b) {
                return JSONUtil.toJsonPrettyStr(Result.success());
            } else {
                return JSONUtil.toJsonPrettyStr(Result.fail("更新失败"));
            }
        } catch(Exception e) {
            return JSONUtil.toJsonPrettyStr(Result.error(e.getMessage()));
        }
    }

}
