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
    private int id;
    @Column("receipt_id")
    private int receiptId;
    @Column("record_id")
    private int recordId;
    @Column("cost_name")
    private String costName;
    private float price;
    @Column("dept_id")
    private int deptId;
    private int charge;
    private int execute;
    private int number;
    private int amount;
    private Date time;
    private int payment;
    private int takeMed;
    private String type;
    private String subject;
    private String aim;
    private String body;
    private int hurry;
    private String prescription;
    private String useage;
    private String consumption;
    private String frequency;
    private String results;
}
