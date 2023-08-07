package online.weiyin.moopoint.mapper;

import com.mybatisflex.core.BaseMapper;
import online.weiyin.moopoint.entity.Patient;
import org.apache.ibatis.annotations.Mapper;

/**
 * @Classname PatientMapper
 * @Description 持久层代码生成器类
 * @Version 1.0.0
 * @Date 2023/8/7 18:12
 * @Created by 陈浩东
 */
@Mapper
public interface PatientMapper extends BaseMapper<Patient> {
//    BaseMapper<>为mybatis-flex提供的代码生成器
//    泛型内写对应的实体类
}
