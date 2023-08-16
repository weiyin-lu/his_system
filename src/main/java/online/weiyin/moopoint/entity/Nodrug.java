package online.weiyin.moopoint.entity;

import com.mybatisflex.annotation.Column;
import com.mybatisflex.annotation.Id;
import com.mybatisflex.annotation.KeyType;
import com.mybatisflex.annotation.Table;
import lombok.Data;

/**
 * @Classname Nodrug
 * @Description 医技列表实体类
 * @Version 1.0.1
 * @Date 2023/08/09 下午 02:32
 * @Created by 卢子昂
 */
@Data
@Table("nondrug")
public class Nodrug {
    @Id(keyType = KeyType.Auto)
    private Integer id;
    private String code;
    private String name;
    private Float price;
    private String standard;
    @Column("dept_id")
    private Integer deptId;
    private String subject;
    @Column(isLogicDelete = true)
    private Integer status;
}
