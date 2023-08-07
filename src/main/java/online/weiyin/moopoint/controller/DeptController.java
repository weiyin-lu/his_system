package online.weiyin.moopoint.controller;

import cn.hutool.json.JSONUtil;
import com.mybatisflex.core.query.QueryWrapper;
import online.weiyin.moopoint.common.Result;
import online.weiyin.moopoint.entity.Department;
import online.weiyin.moopoint.service.impl.DepartmentServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Collections;
import java.util.List;
import java.util.Map;

import static online.weiyin.moopoint.entity.table.DepartmentTableDef.DEPARTMENT;


/**
 * @Classname DeptController
 * @Description TODO
 * @Version 1.0.0
 * @Date 2023/8/7 14:23
 * @Created by 陈浩东
 */
@RestController
@RequestMapping("/dept")
public class DeptController {
    @Autowired
    DepartmentServiceImpl departmentService;

//  查询所有有效科室
    @GetMapping("/")
    @ResponseBody
    public String getDeptsList() {

        QueryWrapper query = QueryWrapper.create()
                .where(DEPARTMENT.STATUS.eq(1));
        List<Department> list = departmentService.list(query);
        System.out.println(list);
        return JSONUtil.toJsonPrettyStr(Result.ok(list));
    }

//  根据条件查找对应科室
    @PostMapping("/deptname")
    @ResponseBody
    public String getDeptByChooseList(@RequestParam Map<String,Object> map) {

//      去除键值为空字符串的键
        map.values().removeAll(Collections.singleton(""));

//        遍历找出null和空字符串删除键
//        map.entrySet().removeIf(entry -> entry.getValue() == null && entry.getValue() == "");

        List<Department> list = departmentService.listByMap(map);
        return JSONUtil.toJsonPrettyStr(Result.ok(list));
    }

//  根据传入的id删除对应科室
    @PostMapping("/removeById")
    @ResponseBody
    public String removeDeptById(int id) {

        boolean remove = departmentService.removeById(id);
        if (remove) {
            return JSONUtil.toJsonPrettyStr(Result.success());
        }else {
            return JSONUtil.toJsonPrettyStr(Result.fail("删除失败"));
        }
    }


//  添加科室
    @PostMapping("/add")
    @ResponseBody
    public String addDept(Department department) {
        System.out.println(department);
        boolean save = departmentService.save(department);
        if (save) {
            return JSONUtil.toJsonPrettyStr(Result.success());
        } else {
            return JSONUtil.toJsonPrettyStr(Result.fail("添加失败"));
        }
    }
//  修改科室
    @PostMapping("/update")
    @ResponseBody
    public String updateDept(Department department) {
        boolean update = departmentService.updateById(department);
        if (update) {
            return JSONUtil.toJsonPrettyStr(Result.success());
        } else {
            return JSONUtil.toJsonPrettyStr(Result.fail("添加失败"));
        }
    }

}
