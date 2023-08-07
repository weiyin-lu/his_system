package online.weiyin.moopoint.entity;

import com.mybatisflex.annotation.Column;
import com.mybatisflex.annotation.Id;
import com.mybatisflex.annotation.KeyType;
import com.mybatisflex.annotation.Table;
import lombok.Data;

import java.util.Date;

/**
 * @Classname Patient
 * @Description 挂号实体类
 * @Version 1.0.0
 * @Date 2023/8/7 17:38
 * @Created by 陈浩东
 */
@Data
@Table("patient")
public class Patient {

    @Id(keyType = KeyType.Auto)
    private Integer id;
    @Column("record_id")
    private Integer recordId;
    private String name;
    private String gender;
    private Integer age;
    private Date birthday;
    @Column("set_category")
    private String setCategory;
    @Column("patient_id")
    private String patientId;
    private String address;
    @Column("doc_id")
    private Integer docId;
    @Column("dept_id")
    private Integer deptId;
    @Column("reg_level")
    private String regLevel;
    private Integer cost;
    private String subject;
    @Column("rec_book")
    private Integer recBook;
    private Date booktime;
    private String state;
    private String noon;
    @Column("recepit_id")
    private Integer recepitId;
    @Column("precise_time")
    private Date preciseTime;

}
