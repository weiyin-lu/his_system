package online.weiyin.moopoint.entity;

import com.mybatisflex.annotation.Column;
import com.mybatisflex.annotation.Id;
import com.mybatisflex.annotation.KeyType;
import com.mybatisflex.annotation.Table;
import lombok.Data;

/**
 * @Classname Register
 * @Description 挂号级别表
 * @Version 1.0.0
 * @Date 2023/8/8 9:25
 * @Created by 陈浩东
 */
@Data
@Table("register")
public class Register {

    @Id(keyType = KeyType.Auto)
    @Column("reg_id")
    private Integer regId;
    @Column("reg_level")
    private String regLevel;
    @Column("reg_limit")
    private Integer regLimit;
    @Column("reg_cost")
    private Integer regCost;
    @Column("reg_order")
    private Integer regOrder;
    private String subject;
    @Column(isLogicDelete = true)
    private Integer status;
}
