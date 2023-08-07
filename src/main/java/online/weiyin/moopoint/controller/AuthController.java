package online.weiyin.moopoint.controller;

import cn.hutool.json.JSONUtil;
import com.mybatisflex.core.query.QueryWrapper;
import online.weiyin.moopoint.common.Result;
import online.weiyin.moopoint.entity.Doctor;
import online.weiyin.moopoint.service.impl.DoctorServiceImpl;
import online.weiyin.moopoint.util.TokenUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import static online.weiyin.moopoint.entity.table.DoctorTableDef.DOCTOR;

/**
 * @Classname AuthController
 * @Description 用户登录业务
 * @Version 1.0.0
 * @Date 2023/08/07 下午 06:27
 * @Created by 卢子昂
 */
@RestController
@RequestMapping("/auth")
public class AuthController {
    @Autowired
    DoctorServiceImpl doctorService;
    @PostMapping("/login")
    @ResponseBody
    public String login(int id, String password) {
        QueryWrapper queryWrapper = QueryWrapper.create().where(DOCTOR.DOC_ID.eq(id))
                .and(DOCTOR.PASSWORD.eq(password));
        try { // 捕获可能出现的任何异常
            Doctor one = doctorService.getOne(queryWrapper);

            if(one != null) {
//                如果查询结果不为空，说明登录成功，返回token
                String token = TokenUtil.getToken(one.getName());
                return JSONUtil.toJsonPrettyStr(Result.ok(token));
            } else {
//                如果为空，说明登录流程失败
                return JSONUtil.toJsonPrettyStr(Result.fail("账号或密码错误"));
            }
        } catch (Exception e) {
//            出错返回相关数据
            return JSONUtil.toJsonPrettyStr(Result.error(e.getMessage()));
        }
    }
}
