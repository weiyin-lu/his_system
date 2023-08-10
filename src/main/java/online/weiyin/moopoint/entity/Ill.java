package online.weiyin.moopoint.entity;

import com.mybatisflex.annotation.Column;
import com.mybatisflex.annotation.Id;
import com.mybatisflex.annotation.Table;
import lombok.Data;

/**
 * @Classname Ill
 * @Description 诊断病实体类
 * @Version 1.0.0
 * @Date 2023/08/10 下午 09:28
 * @Created by 卢子昂
 */
@Data
@Table("ill")
public class Ill {
    @Id
    @Column("ill_id")
    private String illId;
    @Column("ill_name")
    private String illName;
    @Column("IDC_code")
    private String idcCode;
    @Column("ill_type")
    private String illType;
    @Column(isLogicDelete = true)
    private Integer status;
    @Column("ill_kind")
    private  Integer illKind;
}
