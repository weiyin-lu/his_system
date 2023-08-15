package online.weiyin.moopoint.service.impl;

import com.mybatisflex.core.query.QueryWrapper;
import com.mybatisflex.core.util.UpdateEntity;
import com.mybatisflex.spring.service.impl.ServiceImpl;
import online.weiyin.moopoint.entity.Consume;
import online.weiyin.moopoint.entity.dto.CheckOutDTO;
import online.weiyin.moopoint.mapper.ConsumeMapper;
import online.weiyin.moopoint.service.ConsumeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

import static online.weiyin.moopoint.entity.table.ConsumeTableDef.CONSUME;

/**
 * @Classname ConsumeServiceImpl
 * @Description 医技/药房订单service实现类
 * @Version 1.0.2
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
                .and(CONSUME.TYPE.eq("检查"));
        List<Consume> consumes = consumeMapper.selectListByQuery(wrapper);
        return consumes;
    }
//    根据挂号记录id获取药房信息
    @Override
    public List<Consume> selectMedicineByRecordId(int recordId) {
        QueryWrapper wrapper = QueryWrapper.create()
                .where(CONSUME.RECORD_ID.eq(recordId))
                .and(CONSUME.TYPE.eq("中药"))
                .or(CONSUME.TYPE.eq("西药"));
        List<Consume> consumes = consumeMapper.selectListByQuery(wrapper);
        return consumes;
    }

//    更新检查结果（医技）
    @Override
    public boolean updateResultById(CheckOutDTO result) {
//        构造一个特定值更新的对象
//        https://mybatis-flex.com/zh/base/add-delete-update.html#%E9%83%A8%E5%88%86%E5%AD%97%E6%AE%B5%E6%9B%B4%E6%96%B0
        Consume consume = UpdateEntity.of(Consume.class, result.getId());
        consume.setResults(result.getResults());

        int update = consumeMapper.update(consume);
        return update > 0;    }

//    检查支付状态
    @Override
    public boolean checkPayment(int id) {
        QueryWrapper wrapper = QueryWrapper.create()
                .select(CONSUME.PAYMENT)
                .where(CONSUME.ID.eq(id));
        Consume payment = consumeMapper.selectOneByQuery(wrapper);
        return payment.getPayment() == 1;
    }

//    检查退费状态
    @Override
    public boolean checkTakeMed(int id) {
        QueryWrapper wrapper = QueryWrapper.create()
                .select(CONSUME.TAKE_MED)
                .where(CONSUME.ID.eq(id));
        Consume payment = consumeMapper.selectOneByQuery(wrapper);
        return payment.getTakeMed() == 1;
    }

//    更新支付状态，直接更新为已支付
    @Override
    public boolean updatePayment(int id) {
        Consume consume = UpdateEntity.of(Consume.class, id);
        consume.setPayment(1);

        int update = consumeMapper.update(consume);
        return update > 0;
    }

//    更新执行状态
    @Override
    public boolean updateExecute(int id,int execute) {
        Consume consume = UpdateEntity.of(Consume.class, id);
        consume.setExecute(execute);

        int update = consumeMapper.update(consume);
        return update > 0;
    }

//    更新退费状态，直接改为需退费(1)
    @Override
    public boolean updateTakeMed(int id) {
        Consume consume = UpdateEntity.of(Consume.class, id);
//        consume.setExecute(1);
        consume.setTakeMed(1);

        int update = consumeMapper.update(consume);
        return update > 0;
    }

}
