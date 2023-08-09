package online.weiyin.moopoint.service;

import com.mybatisflex.core.service.IService;
import online.weiyin.moopoint.entity.Consume;
import online.weiyin.moopoint.entity.dto.CheckOutDTO;

import java.util.List;

/**
 * @Classname ConsumeService
 * @Description 医技/药房订单service
 * @Version 1.0.2
 * @Date 2023/08/09 下午 02:16
 * @Created by 卢子昂
 */
public interface ConsumeService extends IService<Consume> {

    List<Consume> selectCheckoutListByRecordId(int recordId);

    List<Consume> selectMedicineByRecordId(int recordId);

    boolean updateResultById(CheckOutDTO result);

    boolean checkPayment(int id);

    boolean updateExecute(int id);
}