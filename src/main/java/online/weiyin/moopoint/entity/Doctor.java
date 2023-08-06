package online.weiyin.moopoint.entity;

import com.mybatisflex.annotation.Column;
import com.mybatisflex.annotation.Id;
import com.mybatisflex.annotation.Table;
import lombok.Data;

@Data
@Table("doctor")
public class Doctor {

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
    private Integer status;
}
