package online.weiyin.moopoint.entity;

import com.mybatisflex.annotation.Column;
import com.mybatisflex.annotation.Id;
import com.mybatisflex.annotation.KeyType;
import com.mybatisflex.annotation.Table;
import lombok.Data;

import java.util.Date;

/**
 * @Classname Medrecord
 * @Description 问诊信息实体类
 * @Version 1.0.0
 * @Date 2023/08/10 下午 01:45
 * @Created by 卢子昂
 */
@Data
@Table("medrecord")
public class Medrecord {

    @Id(keyType = KeyType.Auto)
    private Integer id;
    @Column("record_id")
    private Integer recordId;
    private String complaint;
    @Column("cur_ill")
    private String curIll;
    @Column("cur_treatment")
    private String curTreat;
    @Column("past_ill")
    private String pastIll;
    private String allergy;
    @Column("phy_exam")
    private String phyExam;
    private Integer type;
    @Column("ICD_code")
    private String icdCode;
    private Date time;
    private String suggest;
    private String attention;
    @Column("doc_id")
    private Integer docId;
    private String results;
    @Column("register_id")
    private Integer registerId;
}
