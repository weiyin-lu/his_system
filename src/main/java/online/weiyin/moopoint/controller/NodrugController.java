package online.weiyin.moopoint.controller;

import cn.hutool.json.JSONUtil;
import online.weiyin.moopoint.common.Result;
import online.weiyin.moopoint.entity.Nodrug;
import online.weiyin.moopoint.service.impl.NodrugServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @Classname NodrugController
 * @Description 医技管理业务，此类为CURD用途接口的最佳实践参考
 * @Version 1.0.1
 * @Date 2023/08/09 下午 02:56
 * @Created by 卢子昂
 */
@RestController
@RequestMapping("/checkouts/manage")
public class NodrugController {

    @Autowired
    NodrugServiceImpl nodrugService;

//    查询所有有效医技列表
    @GetMapping("/")
    @ResponseBody
    public String getNodrugList() {
        List<Nodrug> list = nodrugService.list();
        return JSONUtil.toJsonPrettyStr(Result.ok(list));
    }

//    添加或修改医技信息
//    修改必须提供主键
    @PutMapping("/")
    @ResponseBody
    public String saveOrUpdateNodrug(@RequestBody Nodrug nodrug) {
        try {
            boolean b = nodrugService.saveOrUpdate(nodrug);
            if (b) {
                return JSONUtil.toJsonPrettyStr(Result.success());
            } else {
                return JSONUtil.toJsonPrettyStr(Result.fail("更新失败"));
            }
        } catch(Exception e) {
            return JSONUtil.toJsonPrettyStr(Result.error(e.getMessage()));
        }
    }

//    逻辑删除医技信息
    @DeleteMapping("/{id}")
    @ResponseBody
    public String removeNodrug(@PathVariable int id) {
        boolean b = nodrugService.removeById(id);
        if (b) {
            return JSONUtil.toJsonPrettyStr(Result.success());
        } else {
            return JSONUtil.toJsonPrettyStr(Result.fail("删除失败"));
        }
    }
}
