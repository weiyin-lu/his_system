package online.weiyin.moopoint.service.impl;

import com.mybatisflex.spring.service.impl.ServiceImpl;
import online.weiyin.moopoint.entity.Ill;
import online.weiyin.moopoint.mapper.IllMapper;
import online.weiyin.moopoint.service.IllService;
import org.springframework.stereotype.Service;

/**
 * @Classname IllServiceImpl
 * @Description 诊断结果service实现类
 * @Version 1.0.0
 * @Date 2023/08/10 下午 09:41
 * @Created by 卢子昂
 */
@Service
public class IllServiceImpl extends ServiceImpl<IllMapper, Ill> implements IllService {
}
