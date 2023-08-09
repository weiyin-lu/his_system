package online.weiyin.moopoint.service;

import com.mybatisflex.core.service.IService;
import online.weiyin.moopoint.entity.Patient;

import java.util.List;

/**
 * @Classname PatientService
 * @Description 挂号管理service层接口
 * @Version 1.0.1
 * @Date 2023/8/7 18:13
 * @Created by 陈浩东
 */
public interface PatientService extends IService<Patient> {

    public List<Patient> selectConsumeCheckoutPatientList();
}
