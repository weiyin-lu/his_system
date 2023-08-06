package online.weiyin.moopoint.mapper;

import com.mybatisflex.core.BaseMapper;
import online.weiyin.moopoint.entity.Doctor;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface DoctorMapper extends BaseMapper<Doctor> {
//    BaseMapper<>为mybatis-flex提供的代码生成器
//    泛型内写对应的实体类
}
