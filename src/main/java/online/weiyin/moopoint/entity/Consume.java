package online.weiyin.moopoint.entity;

import com.mybatisflex.annotation.Column;
import com.mybatisflex.annotation.Id;
import com.mybatisflex.annotation.KeyType;
import com.mybatisflex.annotation.Table;
import lombok.Data;

import java.util.Date;

/**
 * @Classname Consume
 * @Description 医技、药房订单实体类
 * @Version 1.0.0
 * @Date 2023/08/09 下午 02:01
 * @Created by 卢子昂
 */
@Data
@Table("consume")
public class Consume {
    @Id(keyType = KeyType.Auto)
    private Integer id;
    @Column("receipt_id")
    private Integer receiptId;
    @Column("record_id")
    private Integer recordId;
    @Column("cost_name")
    private String costName;
    private Float price;
    @Column("dept_id")
    private Integer deptId;
    private Integer charge;
    private Integer execute;
    private Integer number;
    private Integer amount;
    private Date time;
    private Integer payment;
    private Integer takeMed;
    private String type;
    private String subject;
    private String aim;
    private String body;
    private Integer hurry;
    private String prescription;
    private String useage;
    private String consumption;
    private String frequency;
    private String results;
}
