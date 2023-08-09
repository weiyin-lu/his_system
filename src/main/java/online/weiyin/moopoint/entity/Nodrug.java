package online.weiyin.moopoint.entity;

import com.mybatisflex.annotation.Column;
import com.mybatisflex.annotation.Id;
import com.mybatisflex.annotation.Table;
import lombok.Data;

/**
 * @Classname Nodrug
 * @Description 医技列表实体类
 * @Version 1.0.0
 * @Date 2023/08/09 下午 02:32
 * @Created by 卢子昂
 */
@Data
@Table("nodrug")
public class Nodrug {
    @Id
    private int id;
    private int code;
    private int name;
    private int price;
    private int standard;
    @Column("dept_id")
    private int deptId;
    private String subject;
    private int type;
    @Column(isLogicDelete = true)
    private int status;
}
