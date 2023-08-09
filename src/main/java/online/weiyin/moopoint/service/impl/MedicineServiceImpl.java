package online.weiyin.moopoint.service.impl;

import com.mybatisflex.spring.service.impl.ServiceImpl;
import online.weiyin.moopoint.entity.Medicine;
import online.weiyin.moopoint.mapper.MedicineMapper;
import online.weiyin.moopoint.service.MedicineService;
import org.springframework.stereotype.Service;

/**
 * @Classname MedicineServiceImpl
 * @Description 药品管理service层实现类
 * @Version 1.0.0
 * @Date 2023/8/9 14:19
 * @Created by 陈浩东
 */
@Service
public class MedicineServiceImpl extends ServiceImpl<MedicineMapper, Medicine>
        implements MedicineService {
}
