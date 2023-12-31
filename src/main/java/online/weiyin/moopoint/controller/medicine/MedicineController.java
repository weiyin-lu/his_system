package online.weiyin.moopoint.controller.medicine;

import cn.hutool.json.JSONUtil;
import com.mybatisflex.core.query.QueryWrapper;
import online.weiyin.moopoint.entity.common.Result;
import online.weiyin.moopoint.entity.Medicine;
import online.weiyin.moopoint.service.impl.MedicineServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

import static online.weiyin.moopoint.entity.table.MedicineTableDef.MEDICINE;

/**
 * @Classname MedicineController
 * @Description 药品管理业务
 * @Version 1.0.0
 * @Date 2023/8/9 14:21
 * @Created by 陈浩东
 */
@RestController
@RequestMapping("/medicines/manage")
public class MedicineController {

    @Autowired
    MedicineServiceImpl medicineService;

//  查询所有有效药品列表
    @GetMapping("/")
    @ResponseBody
    public String getMedicinesList() {

        QueryWrapper query = QueryWrapper.create()
                .where(MEDICINE.STATUS.eq(1));
        List<Medicine> list = medicineService.list(query);
        return JSONUtil.toJsonPrettyStr(Result.ok(list));
    }

//  根据传入的id删除对应药品
    @DeleteMapping("/{id}")
    @ResponseBody
    public String removeMedicineById(@PathVariable int id) {

        boolean remove = medicineService.removeById(id);
        if (remove) {
            return JSONUtil.toJsonPrettyStr(Result.success());
        }else {
            return JSONUtil.toJsonPrettyStr(Result.fail("删除失败"));
        }
    }

//  添加或修改药品
//  增加时主键自动递增，修改时应当传入主键，否则会创建一条新的数据
    @PutMapping("/")
    @ResponseBody
    public String addOrUpdateMedicine(@RequestBody Medicine medicine) {

        boolean save = medicineService.saveOrUpdate(medicine);
        if (save) {
            return JSONUtil.toJsonPrettyStr(Result.success());
        } else {
            return JSONUtil.toJsonPrettyStr(Result.fail("添加失败"));
        }
    }
}
