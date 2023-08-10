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
des:    逻辑删除某用户
return: 无
```