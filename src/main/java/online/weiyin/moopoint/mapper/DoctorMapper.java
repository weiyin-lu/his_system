package online.weiyin.moopoint.mapper;

import com.mybatisflex.core.BaseMapper;
import online.weiyin.moopoint.entity.Doctor;
import org.apache.ibatis.annotations.Mapper;

/**
 * @Classname DoctorMapper
 * @Description 持久层代码生成器类
 * @Version 1.0.0
 * @Date 2023/08/06 下午 05:43
 * @Created by 卢子昂
 */
@Mapper
public interface DoctorMapper extends BaseMapper<Doctor> {
//    BaseMapper<>为mybatis-flex提供的代码生成器
//    泛型内写对应的实体类
}
