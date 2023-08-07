package online.weiyin.moopoint.entity;

import com.mybatisflex.annotation.Column;
import com.mybatisflex.annotation.Id;
import com.mybatisflex.annotation.KeyType;
import com.mybatisflex.annotation.Table;
import lombok.Data;

/**
 * @Classname Department
 * @Description 科室实体类
 * @Version 1.0.0
 * @Date 2023/08/07 上午 09:43
 * @Created by 卢子昂
 */
@Data
@Table("dept")
public class Department {

    @Id(keyType = KeyType.Auto)
    @Column("dept_id")
    private Integer deptId;
    @Column("dept_name")
    private String deptName;
    @Column("dept_type")
    private String deptType;
    @Column("dept_func")
    private String deptFunc;
    @Column(isLogicDelete = true)
    private Integer status;
}
