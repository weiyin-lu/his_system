package online.weiyin.moopoint.service.impl;

import com.mybatisflex.spring.service.impl.ServiceImpl;
import online.weiyin.moopoint.entity.Nodrug;
import online.weiyin.moopoint.mapper.NodrugMapper;
import online.weiyin.moopoint.service.NodrugService;
import org.springframework.stereotype.Service;

/**
 * @Classname NodrugServiceImpl
 * @Description 医技列表service实现类
 * @Version 1.0.0
 * @Date 2023/08/09 下午 02:40
 * @Created by 卢子昂
 */
@Service
public class NodrugServiceImpl extends ServiceImpl<NodrugMapper, Nodrug> implements NodrugService {
}
