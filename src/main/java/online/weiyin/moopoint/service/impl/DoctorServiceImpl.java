package online.weiyin.moopoint.service.impl;

import com.mybatisflex.core.query.QueryWrapper;
import com.mybatisflex.spring.service.impl.ServiceImpl;
import online.weiyin.moopoint.entity.Doctor;
import online.weiyin.moopoint.entity.dto.DoctorDTO;
import online.weiyin.moopoint.mapper.DoctorMapper;
import online.weiyin.moopoint.service.DoctorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

import static online.weiyin.moopoint.entity.table.DepartmentTableDef.DEPARTMENT;
import static online.weiyin.moopoint.entity.table.DoctorTableDef.DOCTOR;
import static online.weiyin.moopoint.entity.table.RegisterTableDef.REGISTER;

/**
 * @Classname DoctorServiceImpl
 * @Description 用户管理service层实现类
 * @Version 1.0.0
 * @Date 2023/08/07 下午 01:40
 * @Created by 卢子昂
 */
@Service
public class DoctorServiceImpl extends ServiceImpl<DoctorMapper, Doctor>
        implements DoctorService {

    @Autowired
    DoctorMapper doctorMapper;
    @Override
    public List<DoctorDTO> selectDoctorList() {
//        根据DoctorDTO构造一个多表查询wrapper
        QueryWrapper wrapper = QueryWrapper.create()
                .select(DOCTOR.DOC_ID,
                        DOCTOR.NAME,
                        DOCTOR.USER_TYPE,
                        DOCTOR.TITLE)
                .select(DEPARTMENT.DEPT_NAME.as(DoctorDTO::getDeptName),
                        DEPARTMENT.DEPT_TYPE.as(DoctorDTO::getDeptType),
                        DEPARTMENT.DEPT_FUNC.as(DoctorDTO::getDeptFunc))
                .select(REGISTER.REG_LEVEL.as(DoctorDTO::getRegName))
                .from(DOCTOR)
                .leftJoin(DEPARTMENT).on(DOCTOR.DEPT_ID.eq(DEPARTMENT.DEPT_ID))
                .leftJoin(REGISTER).on(DOCTOR.REG_ID.eq(REGISTER.REG_ID));
        List<DoctorDTO> doctorDTOS = doctorMapper.selectListByQueryAs(wrapper, DoctorDTO.class);
        return doctorDTOS;
    }
}
