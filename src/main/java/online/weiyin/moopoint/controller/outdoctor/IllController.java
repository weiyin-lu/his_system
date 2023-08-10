package online.weiyin.moopoint.controller.outdoctor;

import cn.hutool.json.JSONUtil;
import online.weiyin.moopoint.entity.Ill;
import online.weiyin.moopoint.entity.common.Result;
import online.weiyin.moopoint.service.impl.IllServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @Classname IllController
 * @Description 诊断结果业务
 * @Version 1.0.0
 * @Date 2023/08/10 下午 09:38
 * @Created by 卢子昂
 */
@RestController
@RequestMapping("/ill")
public class IllController {
    @Autowired
    IllServiceImpl illService;

//    查询所有有效的诊断结果
    @GetMapping("/")
    public String getIllList() {
        List<Ill> list = illService.list();
        return JSONUtil.toJsonPrettyStr(Result.ok(list));
    }
}
