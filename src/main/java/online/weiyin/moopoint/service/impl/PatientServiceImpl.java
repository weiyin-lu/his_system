package online.weiyin.moopoint.service.impl;

import com.mybatisflex.core.query.QueryWrapper;
import com.mybatisflex.spring.service.impl.ServiceImpl;
import online.weiyin.moopoint.entity.Patient;
import online.weiyin.moopoint.mapper.PatientMapper;
import online.weiyin.moopoint.service.PatientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

import static online.weiyin.moopoint.entity.table.ConsumeTableDef.CONSUME;
import static online.weiyin.moopoint.entity.table.PatientTableDef.PATIENT;

/**
 * @Classname PatientServiceImpl
 * @Description 挂号管理service层实现类
 * @Version 1.0.1
 * @Date 2023/8/7 18:15
 * @Created by 陈浩东
 */
@Service
public class PatientServiceImpl extends ServiceImpl<PatientMapper, Patient>
        implements PatientService {

    @Autowired
    PatientMapper patientMapper;

//    依赖consume表中的type信息查询patient表信息（医技）
    @Override
    public List<Patient> selectConsumeCheckoutPatientList() {
//        此条件有重复查找问题，需要修改 卢子昂_2023-08-09_17:30
        QueryWrapper wrapper = QueryWrapper.create()
                .select(PATIENT.ALL_COLUMNS)
                .from(PATIENT)
                .rightJoin(CONSUME).on(PATIENT.RECORD_ID.eq(CONSUME.RECORD_ID))
                .groupBy(PATIENT.ID)
                .where(CONSUME.TYPE.eq("检查"))
                .or(CONSUME.TYPE.eq("处置"));
        List<Patient> patients = patientMapper.selectListByQuery(wrapper);

        return patients;
    }

    //    依赖consume表中的type信息查询patient表信息（药品）
    @Override
    public List<Patient> selectConsumeMedicineList() {
        QueryWrapper wrapper = QueryWrapper.create()
                .select(PATIENT.ALL_COLUMNS)
                .from(PATIENT)
                .rightJoin(CONSUME).on(PATIENT.RECORD_ID.eq(CONSUME.RECORD_ID))
                .groupBy(PATIENT.ID)
                .where(CONSUME.TYPE.eq("中药"))
                .or(CONSUME.TYPE.eq("西药"));
        List<Patient> patients = patientMapper.selectListByQuery(wrapper);

        return patients;
    }
}
