package online.weiyin.moopoint.service;

import cn.hutool.json.JSONUtil;
import online.weiyin.moopoint.entity.Consume;
import online.weiyin.moopoint.service.impl.ConsumeServiceImpl;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.Date;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

/**
 * @Classname ConsumeServiceTest
 * @Description 医技/药房功能测试类
 * @Version 1.0.0
 * @Date 2023/08/09 下午 05:09
 * @Created by 卢子昂
 */
@SpringBootTest
class ConsumeServiceTest {

    @Autowired
    ConsumeServiceImpl consumeService;
    @Test
    void selectCheckoutListByRecordId() {
        List<Consume> consumes = consumeService.selectCheckoutListByRecordId(6);
        System.out.println(JSONUtil.toJsonPrettyStr(consumes));
    }

    @Test
    void doctorChoose() {
        Consume consume = new Consume();
//      前端拿来的值
        consume.setRecordId(6);
        consume.setCostName("针灸");
        consume.setPrice(465F);
        consume.setDeptId(10);
        consume.setNumber(1);
        consume.setAmount(465);

//      后端自己赋值的
        consume.setCharge(1);

        consume.setTime(new Date());

        boolean b = consumeService.saveOrUpdate(consume);
        System.out.println(b);
    }
}