package online.weiyin.moopoint.service.impl;

import com.mybatisflex.spring.service.impl.ServiceImpl;
import online.weiyin.moopoint.entity.Patient;
import online.weiyin.moopoint.mapper.PatientMapper;
import online.weiyin.moopoint.service.PatientService;
import org.springframework.stereotype.Service;

/**
 * @Classname PatientServiceImpl
 * @Description 挂号管理service层实现类
 * @Version 1.0.0
 * @Date 2023/8/7 18:15
 * @Created by 陈浩东
 */
@Service
public class PatientServiceImpl extends ServiceImpl<PatientMapper, Patient>
        implements PatientService {
}
