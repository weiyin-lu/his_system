package online.weiyin.moopoint.controller.outdoctor;

import cn.hutool.json.JSONUtil;
import com.mybatisflex.core.query.QueryWrapper;
import online.weiyin.moopoint.entity.Medrecord;
import online.weiyin.moopoint.entity.common.Result;
import online.weiyin.moopoint.service.impl.MedrecordServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import static online.weiyin.moopoint.entity.table.MedrecordTableDef.MEDRECORD;

/**
 * @Classname MedrecordController
 * @Description 门诊医生问诊业务
 * @Version 1.0.0
 * @Date 2023/08/10 下午 01:44
 * @Created by 卢子昂
 */
@RestController
@RequestMapping("/outdoctors")
public class MedrecordController {
    @Autowired
    MedrecordServiceImpl medrecordService;

//    查询指定病人的问诊信息，查询结果允许为null
    @GetMapping("/{recordId}")
    @ResponseBody
    public String searchMedRecordByRecordId(@PathVariable Integer recordId) {
        QueryWrapper wrapper = QueryWrapper.create()
                .where(MEDRECORD.RECORD_ID.eq(recordId));
        Medrecord one = medrecordService.getOne(wrapper);
        return JSONUtil.toJsonPrettyStr(Result.ok(one));
    }
//    添加或更新指定病人的问诊信息
    @PostMapping("/")
    @ResponseBody
    public String saveOrUpdateMedrecord(@RequestBody Medrecord info) {
        try {
            boolean b = medrecordService.saveOrUpdate(info);
            if (b) {
                return JSONUtil.toJsonPrettyStr(Result.success());
            } else {
                return JSONUtil.toJsonPrettyStr(Result.fail("操作失败"));
            }
        } catch(Exception e) {
            return JSONUtil.toJsonPrettyStr(Result.error(e.getMessage()));
        }
    }
}
