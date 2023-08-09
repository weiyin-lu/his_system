package online.weiyin.moopoint.entity;

import com.mybatisflex.annotation.Column;
import com.mybatisflex.annotation.Id;
import com.mybatisflex.annotation.KeyType;
import com.mybatisflex.annotation.Table;
import lombok.Data;

/**
 * @Classname Medicine
 * @Description 药品实体类
 * @Version 1.0.0
 * @Date 2023/8/9 14:03
 * @Created by 陈浩东
 */
@Data
@Table("medicine")
public class Medicine {

    @Id(keyType = KeyType.Auto)
    private Integer id;
    private String name;
    private String code;
    private String standard;
    private String dosage;
    private String unit;
    private Double cost;
    private String type;
    private String subject;
    @Column("dept_id")
    private Integer deptId;
    @Column(isLogicDelete = true)
    private Integer status;

}
