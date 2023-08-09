package online.weiyin.moopoint.service.impl;

import com.mybatisflex.core.query.QueryWrapper;
import com.mybatisflex.spring.service.impl.ServiceImpl;
import online.weiyin.moopoint.entity.Consume;
import online.weiyin.moopoint.mapper.ConsumeMapper;
import online.weiyin.moopoint.service.ConsumeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

import static online.weiyin.moopoint.entity.table.ConsumeTableDef.CONSUME;

/**
 * @Classname ConsumeServiceImpl
 * @Description 医技/药房订单service实现类
 * @Version 1.0.1
 * @Date 2023/08/09 下午 02:18
 * @Created by 卢子昂
 */
@Service
public class ConsumeServiceImpl extends ServiceImpl<ConsumeMapper, Consume> implements ConsumeService {

    @Autowired
    ConsumeMapper consumeMapper;
//    根据挂号记录id获取处置信息
    @Override
    public List<Consume> selectCheckoutListByRecordId(int recordId) {
        QueryWrapper wrapper = QueryWrapper.create()
                .where(CONSUME.RECORD_ID.eq(recordId))
                .and(CONSUME.TYPE.eq("检查"))
                .or(CONSUME.TYPE.eq("处置"));
        List<Consume> consumes = consumeMapper.selectListByQuery(wrapper);
        return consumes;
    }

    @Override
    public List<Consume> selectMedicineByRecordId(int recordId) {
        QueryWrapper wrapper = QueryWrapper.create()
                .where(CONSUME.RECORD_ID.eq(recordId))
                .and(CONSUME.TYPE.eq("中药"))
                .or(CONSUME.TYPE.eq("西药"));
        List<Consume> consumes = consumeMapper.selectListByQuery(wrapper);
        return consumes;
    }

//  根据挂号记录id获取药房信息

}
