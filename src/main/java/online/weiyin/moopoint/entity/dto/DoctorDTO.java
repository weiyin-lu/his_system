package online.weiyin.moopoint.entity.dto;

import com.mybatisflex.annotation.Column;
import com.mybatisflex.annotation.Id;
import com.mybatisflex.annotation.RelationOneToOne;
import lombok.Data;
import online.weiyin.moopoint.entity.Department;
import online.weiyin.moopoint.entity.Register;

/**
 * @Classname DoctorDTO
 * @Description 用户管理-医生信息列表DTO
 * @Version 1.0.0
 * @Date 2023/08/08 下午 09:09
 * @Created by 卢子昂
 */
@Data
public class DoctorDTO {

    @Id
    @Column("doc_id")
    private Integer docId;
    private String name;
    @Column("user_type")
    private String userType;
    private String title;
//    以下是其他实体中的对象
    private String deptName;
    private String deptType;
    private String deptFunc;
    private String regName;
}
