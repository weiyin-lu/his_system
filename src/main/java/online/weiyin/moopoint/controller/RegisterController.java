package online.weiyin.moopoint.controller;

import cn.hutool.json.JSONUtil;
import com.mybatisflex.core.query.QueryWrapper;
import online.weiyin.moopoint.common.Result;
import online.weiyin.moopoint.entity.Register;
import online.weiyin.moopoint.service.impl.RegisterServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

import static online.weiyin.moopoint.entity.table.RegisterTableDef.REGISTER;

/**
 * @Classname RegisterController
 * @Description 挂号级别管理业务
 * @Version 1.0.0
 * @Date 2023/8/8 9:53
 * @Created by 陈浩东
 */
@RestController
@RequestMapping("/registers")
@CrossOrigin
public class RegisterController {
    @Autowired
    RegisterServiceImpl registerService;
//  查询有效挂号级别
    @GetMapping("/")
    @ResponseBody
    public String getRegsList() {
        QueryWrapper query = QueryWrapper.create()
                .where(REGISTER.STATUS.eq(1));
        List<Register> list = registerService.list(query);
        return JSONUtil.toJsonPrettyStr(Result.ok(list));
    }

//  逻辑删除挂号级别
    @PostMapping("remove")
    @ResponseBody
    public String removeRegister(int id) {
        boolean remove = registerService.removeById(id);
        if (remove) {
            return JSONUtil.toJsonPrettyStr(Result.success());
        }else{
            return JSONUtil.toJsonPrettyStr(Result.fail("删除失败"));
        }
    }


}
