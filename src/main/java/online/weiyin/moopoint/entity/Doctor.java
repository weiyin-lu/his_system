package online.weiyin.moopoint.entity;

import com.mybatisflex.annotation.Column;
import com.mybatisflex.annotation.Id;
import com.mybatisflex.annotation.KeyType;
import com.mybatisflex.annotation.Table;
import lombok.Data;

/**
 * @Classname Doctor
 * @Description 医生人员实体类
 * @Version 1.0.0
 * @Date 2023/08/06 下午 04:43
 * @Created by 卢子昂
 */
@Data
@Table("doctor")
public class Doctor {

    @Id(keyType = KeyType.Auto)
    @Column("doc_id")
    private Integer docId;
    private String password;
    private String name;
    @Column("dept_id")
    private Integer deptId;
    @Column("user_type")
    private String userType;
    private String title;
    private Integer schedule;
    @Column("reg_id")
    private Integer regId;
    @Column(isLogicDelete = true)
    private Integer status;
}
