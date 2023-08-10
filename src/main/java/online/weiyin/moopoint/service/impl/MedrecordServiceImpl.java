package online.weiyin.moopoint.service.impl;

import com.mybatisflex.spring.service.impl.ServiceImpl;
import online.weiyin.moopoint.entity.Medrecord;
import online.weiyin.moopoint.mapper.MedrecordMapper;
import online.weiyin.moopoint.service.MedrecordService;
import org.springframework.stereotype.Service;

/**
 * @Classname MedrecordServiceImpl
 * @Description medrecord service接口实现类
 * @Version 1.0.0
 * @Date 2023/08/10 下午 02:24
 * @Created by 卢子昂
 */
@Service
public class MedrecordServiceImpl extends ServiceImpl<MedrecordMapper, Medrecord> implements MedrecordService {
}
