package online.weiyin.moopoint.service.impl;

import com.mybatisflex.spring.service.impl.ServiceImpl;
import online.weiyin.moopoint.entity.Department;
import online.weiyin.moopoint.mapper.DepartmentMapper;
import online.weiyin.moopoint.service.DepartmentService;
import org.springframework.stereotype.Service;

/**
 * @Classname DepartmentServiceImpl
 * @Description 科室管理service层实现类
 * @Version 1.0.0
 * @Date 2023/8/7 14:05
 * @Created by 陈浩东
 */
@Service
public class DepartmentServiceImpl extends ServiceImpl<DepartmentMapper, Department>
        implements DepartmentService {
}
