package online.weiyin.moopoint.controller.admin;

import cn.hutool.json.JSONUtil;
import com.mybatisflex.core.query.QueryWrapper;
import online.weiyin.moopoint.entity.common.Result;
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
 * @Description 科室管理业务
 * @Version 1.0.1
 * @Date 2023/8/7 14:23
 * @Created by 陈浩东
 */
@RestController
@RequestMapping("/depts")
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

//  逻辑删除科室
    @DeleteMapping("/{id}")
    @ResponseBody
    public String removeDeptById(@PathVariable int id) {
        boolean remove = departmentService.removeById(id);
        if (remove) {
            return JSONUtil.toJsonPrettyStr(Result.success());
        }else {
            return JSONUtil.toJsonPrettyStr(Result.fail("删除失败"));
        }
    }


//  添加科室
//  原是Post修改为Put，前段有一处使用Post记得修改
    @PutMapping("/add")
    @ResponseBody
    public String addDept(@RequestBody Department department) {
        boolean save = departmentService.save(department);
        if (save) {
            return JSONUtil.toJsonPrettyStr(Result.success());
        } else {
            return JSONUtil.toJsonPrettyStr(Result.fail("添加失败"));
        }
    }
//  修改科室
    @PutMapping("/update")
    @ResponseBody
    public String updateDept(@RequestBody Department department) {
        boolean update = departmentService.updateById(department);
        if (update) {
            return JSONUtil.toJsonPrettyStr(Result.success());
        } else {
            return JSONUtil.toJsonPrettyStr(Result.fail("修改失败"));
        }
    }

//  根据组合条件查找科室
//  用前端方式实现,故弃用
    @Deprecated
    @ResponseBody
    public String searchDeptByCondition(@RequestBody Map<String,Object> map) {

//      去除键值为空字符串的键
        map.values().removeAll(Collections.singleton(""));

//        遍历找出null和空字符串删除键
//        map.entrySet().removeIf(entry -> entry.getValue() == null && entry.getValue() == "");

        List<Department> list = departmentService.listByMap(map);
        return JSONUtil.toJsonPrettyStr(Result.ok(list));
    }
}
