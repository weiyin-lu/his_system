package online.weiyin.moopoint.config;

import com.mybatisflex.core.FlexGlobalConfig;
import com.mybatisflex.core.audit.AuditManager;
import com.mybatisflex.spring.boot.MyBatisFlexCustomizer;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Configuration;

/**
 * @Classname MybatisFlexConfig
 * @Description mybatis-flex配置类
 * @Version 1.0.1
 * @Date 2023/08/06 下午 04:43
 * @Created by 卢子昂
 */
@Configuration
public class MybatisFlexConfig implements MyBatisFlexCustomizer {

    private static final Logger logger = LoggerFactory
            .getLogger("mybatis-flex-sql");

    @Override
    public void customize(FlexGlobalConfig flexGlobalConfig) {
        //开启审计功能
        AuditManager.setAuditEnable(true);

        //设置 SQL 审计收集器
        AuditManager.setMessageCollector(auditMessage ->
                logger.info("{},{}ms", auditMessage.getFullSql(), auditMessage.getElapsedTime())
        );

        //设置数据库正常时的值
        flexGlobalConfig.setNormalValueOfLogicDelete(1);
        //设置数据已被删除时的值
        flexGlobalConfig.setDeletedValueOfLogicDelete(0);
    }
}