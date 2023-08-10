# 接口功能说明
该部分标注了所有接口的url、参数等相关信息。  
说明卡片格式如下：
```
url:    使用的url链接
method: 请求方法
arg:    形参功能
des:    接口功能描述
return: 返回值携带数据说明（Result.data中的数据）
```
## 鉴权模块
```
url:    /auth/
method: POST
arg:    LoginDTO - 账号密码的DTO对象
des:    登录检查，账号密码正确可通过
return: String - 携带账户基本信息的token
```
## 基本信息维护
### 医生管理
```
url:    /doctors/
method: GET
arg:    无
des:    查询未逻辑删除的医生的基本信息
return: List<DoctorDTO> - 医生信息结果集
```
```
url:    /doctors/{id}
method: DELETE
arg:    int - doctor表待删除医生的主键id
des:    逻辑删除某医生的信息
return: 无
```
```
url:    /doctors/add
method: PUT
arg:    Doctor - doctor表实体类要添加的数据
des:    添加某用户
return: 无
```
```
url:    /doctors/update
method: PUT
arg:    Doctor - doctor表实体类要修改的数据
des:    修改某用户
return: 无
```
###科室管理
```
url:    /dept/
method: GET
arg:    无
des:    查询未逻辑删除的科室的基本信息
return: List<Department> - 科室信息结果集
```
```
url:    /dept/{id}
method: DELETE
arg:    int - dept表待删除科室的主键id
des:    逻辑删除某科室
return: 无
```
```
url:    /dept/add
method: PUT
arg:    Department - dept表实体类要添加的数据
des:    添加某科室
return: 无
```
```
url:    /dept/update
method: PUT
arg:    Department - dept表实体类要修改的数据
des:    修改某科室
return: 无
```
###挂号级别管理
```
url:    /registers/
method: GET
arg:    无
des:    查询未逻辑删除的挂号级别的基本信息
return: List<Register> - 挂号级别信息结果集
```
```
url:    /registers/{id}
method: DELETE
arg:    int - register表待删除挂号级别的主键id
des:    逻辑删除某挂号级别
return: 无
```
```
url:    /registers/add
method: PUT
arg:    Register - register表实体类要添加的数据
des:    添加某挂号级别
return: 无
```
```
url:    /registers/update
method: PUT
arg:    Register - register表实体类要修改的数据
des:    修改某挂号级别
return: 无
```
##门诊挂号收费
###挂号管理业务
```
url:    /patients/
method: GET
arg:    无
des:    查询所有挂号记录
return: List<Patient> - 挂号级别信息结果集
```
```
url:    /patients/pay/{id}
method: GET
arg:    Integer - patient表待修改状态为就诊中的主键id
des:    支付挂号费用
return: 无
```
```
url:    /patients/unpay/{id}
method: GET
arg:    Integer - patient表待退号的主键id
des:    查找退号目标，如果不是就诊中，即可退号
return: 无
```
```
url:    /patients/
method: PUT
arg:    Patient - patient表实体类要添加的数据
des:    挂号或修改挂号信息
return: 无
```
###挂号二级付退费业务（consume相关）
```
url:    /patients/consume/
method: GET
arg:    int - consume表要查询的信息的record_id
des:    查询挂号信息下的处方处置信息
return: List<Consume> - 挂号级别信息结果集
```
```
url:    /patients/consume/pay/{id}
method: GET
arg:    int - consume表待支付订单的主键id
des:    支付指定处方处置信息的费用
return: 无
```
```
url:    /patients/consume/back/{id}
method: GET
arg:    int - consume表待退费的主键id
des:    退费（必须有医技/药房医生操作退药/退处置后才能退费）
return: List<Consume> - 挂号级别信息结果集
```
##门诊医技工作站
###医技管理业务
```
url:    /checkouts/manage/
method: GET
arg:    无
des:    查询所有有效医技列表
return: List<Nodrug> - 医技列表信息结果集
```
```
url:    /checkouts/manage/
method: PUT
arg:    Nodrug - nodrug表实体类要添加或修改的数据
des:    添加或修改医技信息
return: 无
```
```
url:    /checkouts/manage/{id}
method: DELETE
arg:    int - nodrug表待删除医技信息的主键id
des:    逻辑删除医技信息
return: 无
```
###consume医技相关
```
url:    /checkouts/
method: GET
arg:    无
des:    展示有需要处理医技信息的病人概要信息
return: List<Patient> - 病人概要信息结果集
```
```
url:    /checkouts/{recordId}
method: GET
arg:    int - consume表需要处理的病人对应的recordId
des:    展示有需要处理医技信息的病人概要信息
return: List<Consume> - 需处理医技信息结果集
```
```
url:    /checkouts/start/{id}
method: GET
arg:    int - consume表中检查对应订单付款情况的主键id
des:    提交检查，必须为已付款状态才能开始检查
return: 无
```
```
url:    /checkouts/back/{id}
method: GET
arg:    int - consume表中需要进行取消处置的主键id
des:    取消处置
return: 无
```
```
url:    /checkouts/
method: PUT
arg:    CheckOutDTO - 检查结果的DTO类
des:    给出检查结果,执行状态必须为1
return: 无
```
##门诊药房工作站
###药品管理业务
```
url:    /medicines/manage/
method: GET
arg:    无
des:    查询所有有效药品列表
return: List<Medicine> - 药品信息结果集
```
```
url:    /medicines/manage/
method: PUT
arg:    Medicine - medicine表实体类要添加或修改的数据
des:    添加或修改药品信息
return: 无
```
```
url:    /medicines/manage/{id}
method: DELETE
arg:    int - medicine表待删除药品信息的主键id
des:    逻辑删除药品信息
return: 无
```
###consume药品相关
```
url:    /medicines/
method: GET
arg:    无
des:    展示有需要处理药房信息的病人概要信息
return: List<Patient> - 病人概要信息结果集
```
```
url:    /medicines/{recordId}
method: GET
arg:    int - consume表需要处理的病人对应的recordId
des:    展示病人需要处理的详细药品信息
return: List<Consume> - 需处理药品信息结果集
```
```
url:    /medicines/start/{id}
method: GET
arg:    int - consume表中检查对应订单付款情况的主键id
des:    发药，必须为已付款状态才能发药
return: 无
```
```
url:    /medicines/back/{id}
method: GET
arg:    int - consume表中需要进行退药的主键id
des:    退药
return: 无
```