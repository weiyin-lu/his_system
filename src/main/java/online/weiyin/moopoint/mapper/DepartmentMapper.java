package online.weiyin.moopoint.mapper;

import com.mybatisflex.core.BaseMapper;
import online.weiyin.moopoint.entity.Department;
import org.apache.ibatis.annotations.Mapper;

/**
 * @Classname DepartmentMapper
 * @Description 持久层代码生成器类
 * @Version 1.0.0
 * @Date 2023/8/7 13:59
 * @Created by 陈浩东
 */
@Mapper
public interface DepartmentMapper extends BaseMapper<Department> {
//      BaseMapper<为mybatis-fLex提供的代码生成器
//      泛型内写对应的实体类
}
