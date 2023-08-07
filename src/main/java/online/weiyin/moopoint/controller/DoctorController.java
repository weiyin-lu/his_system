package online.weiyin.moopoint.controller;

import cn.hutool.json.JSONObject;
import cn.hutool.json.JSONUtil;
import com.mybatisflex.core.query.QueryWrapper;
import online.weiyin.moopoint.common.Result;
import online.weiyin.moopoint.entity.Doctor;
import online.weiyin.moopoint.service.impl.DoctorServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

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
//    查询有效用户
    @GetMapping("/")
    @ResponseBody
    public String getDoctorsList() {
        QueryWrapper query = QueryWrapper.create()
                .where(DOCTOR.STATUS.eq(1));
        List<Doctor> list = doctorService.list(query);
        return JSONUtil.toJsonPrettyStr(Result.ok(list));
    }
//    逻辑删除用户
    @GetMapping("/remove")
    @ResponseBody
    public String removeDoctor(int id) {
        boolean b = doctorService.removeById(id);
        if (b) {
            return JSONUtil.toJsonPrettyStr(Result.success());
        } else {
            return JSONUtil.toJsonPrettyStr(Result
                    .fail("删除失败，不存在该用户"));
        }
    }
//    添加用户
    @PostMapping("/add")
    @ResponseBody
    public String addDoctor(Doctor doctor) {
        boolean save = doctorService.save(doctor);
        if(save) {
            return JSONUtil.toJsonPrettyStr(Result.success());
        } else {
            return JSONUtil.toJsonPrettyStr(Result.fail("添加失败"));
        }
    }
//    修改用户
    @PostMapping("/update")
    @ResponseBody
    public String updateDoctor(Doctor doctor) {
        boolean update = doctorService.updateById(doctor);//null值不更新到表中
        if(update) {
            return JSONUtil.toJsonPrettyStr(Result.success());
        } else {
            return JSONUtil.toJsonPrettyStr(Result.fail("修改失败"));
        }
    }

}
