package online.weiyin.moopoint;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;


@SpringBootApplication
@MapperScan("online.weiyin.moopoint.mapper")
public class MoopointApplication {

    public static void main(String[] args) {
        SpringApplication.run(MoopointApplication.class, args);
    }

}
