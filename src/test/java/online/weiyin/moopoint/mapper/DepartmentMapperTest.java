package online.weiyin.moopoint.mapper;

import com.mybatisflex.core.query.QueryWrapper;
import online.weiyin.moopoint.entity.Department;
import online.weiyin.moopoint.service.impl.DepartmentServiceImpl;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Classname DepartmentMapper
 * @Description TODO
 * @Version 1.0.0
 * @Date 2023/8/7 14:26
 * @Created by 陈浩东
 */
@SpringBootTest
public class DepartmentMapperTest {
    @Autowired
    DepartmentServiceImpl departmentService;

    @Test
    public void selectall() {
        List<Department> departments =departmentService.list();
        System.out.println(departments);
    }

    @Test
    public void selectById() {
        Department byId = departmentService.getById(1);
        System.out.println(byId);
    }

    @Test
    public void selectBychoose() {
        Map<String,Object> map = new HashMap<>();


        List<Department> departments = departmentService.listByMap(map);
        System.out.println(departments);

    }
}
