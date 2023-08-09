package online.weiyin.moopoint.service;

import cn.hutool.json.JSONUtil;
import online.weiyin.moopoint.entity.Consume;
import online.weiyin.moopoint.service.impl.ConsumeServiceImpl;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

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
}