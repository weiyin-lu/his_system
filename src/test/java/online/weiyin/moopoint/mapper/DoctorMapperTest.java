package online.weiyin.moopoint.mapper;

import com.mybatisflex.core.query.QueryWrapper;
import online.weiyin.moopoint.entity.Doctor;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

import static online.weiyin.moopoint.entity.table.DoctorTableDef.DOCTOR;

@SpringBootTest
public class DoctorMapperTest {
    @Autowired
    DoctorMapper doctorMapper;

    @Test
    public void selectall() {
        List<Doctor> doctors = doctorMapper.selectAll();
        System.out.println(doctors);
    }

    @Test
    public void selectByCondi() {
        QueryWrapper queryWrapper = QueryWrapper.create()
                .select()
                .where(DOCTOR.DOC_ID.eq(1));
//        DOCTOR对象使用mybatis-flex的APT功能实现，需要先编译一下项目，
//        才能获得对应类的APT静态实例
//        https://mybatis-flex.com/zh/others/apt.html
        Doctor doctor = doctorMapper.selectOneByQuery(queryWrapper);
        System.out.println(doctor);
    }

}
