package online.weiyin.moopoint.config;

import com.mybatisflex.core.FlexGlobalConfig;
import com.mybatisflex.core.audit.AuditManager;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Configuration;

/**
 * @Classname MybatisFlexConfig
 * @Description mybatis-flex配置类
 * @Version 1.0.0
 * @Date 2023/08/06 下午 04:43
 * @Created by 卢子昂
 */
@Configuration
public class MybatisFlexConfig {

    private static final Logger logger = LoggerFactory
            .getLogger("mybatis-flex-sql");

    public MybatisFlexConfig() {
        //开启审计功能
        AuditManager.setAuditEnable(true);

        //设置 SQL 审计收集器
        AuditManager.setMessageCollector(auditMessage ->
                logger.info("{},{}ms", auditMessage.getFullSql()
                        , auditMessage.getElapsedTime())
        );

        //逻辑删除标准
        FlexGlobalConfig globalConfig = FlexGlobalConfig.getDefaultConfig();
        //设置数据库正常时的值
        globalConfig.setNormalValueOfLogicDelete(1);
        //设置数据已被删除时的值
        globalConfig.setDeletedValueOfLogicDelete(0);
    }
}