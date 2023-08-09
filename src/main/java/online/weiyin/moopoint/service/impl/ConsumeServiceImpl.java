package online.weiyin.moopoint.service.impl;

import com.mybatisflex.spring.service.impl.ServiceImpl;
import online.weiyin.moopoint.entity.Consume;
import online.weiyin.moopoint.mapper.ConsumeMapper;
import online.weiyin.moopoint.service.ConsumeService;
import org.springframework.stereotype.Service;

/**
 * @Classname ConsumeServiceImpl
 * @Description 医技/药房订单service实现类
 * @Version 1.0.0
 * @Date 2023/08/09 下午 02:18
 * @Created by 卢子昂
 */
@Service
public class ConsumeServiceImpl extends ServiceImpl<ConsumeMapper, Consume> implements ConsumeService {
}
