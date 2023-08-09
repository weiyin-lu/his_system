package online.weiyin.moopoint.service;

import com.mybatisflex.core.service.IService;
import online.weiyin.moopoint.entity.Doctor;
import online.weiyin.moopoint.entity.dto.DoctorDTO;

import java.util.List;

/**
 * @Classname DoctorService
 * @Description 用户管理service层接口
 * @Version 1.0.1
 * @Date 2023/08/07 下午 01:39
 * @Created by 卢子昂
 */
public interface DoctorService extends IService<Doctor> {
    List<DoctorDTO> selectDoctorList();

    DoctorDTO selectDoctorById(int docId);
}
