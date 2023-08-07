package online.weiyin.moopoint.controller;

import cn.hutool.json.JSONObject;
import cn.hutool.json.JSONUtil;
import com.mybatisflex.core.query.QueryWrapper;
import online.weiyin.moopoint.common.Result;
import online.weiyin.moopoint.entity.Doctor;
import online.weiyin.moopoint.service.impl.DoctorServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

import static online.weiyin.moopoint.entity.table.DoctorTableDef.DOCTOR;

/**
 * @Classname DoctorController
 * @Description 用户管理业务
 * @Version 1.0.0
 * @Date 2023/08/07 下午 01:47
 * @Created by 卢子昂
 */
@RestController
@RequestMapping("/doctors")
public class DoctorController {
    @Autowired
    DoctorServiceImpl doctorService;

    @GetMapping("/")
    @ResponseBody
    public String getDoctorsList() {
        QueryWrapper query = QueryWrapper.create()
                .where(DOCTOR.STATUS.eq(1));
        List<Doctor> list = doctorService.list(query);
        System.out.println(list);
        return JSONUtil.toJsonPrettyStr(Result.ok(list));
    }
}
