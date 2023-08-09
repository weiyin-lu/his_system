package online.weiyin.moopoint.entity.common;

import lombok.Data;

/**
 * @Classname Result
 * @Description 统一响应集
 * @Version 1.0.0
 * @Date 2023/08/07 下午 01:50
 * @Created by 卢子昂
 */
@Data
public class Result<T> {
    private Code code;
    private String msg;
    private T data;

    public Result(Code code, String msg, T data) {
        this.code = code;
        this.msg = msg;
        this.data = data;
    }

//    返回含有代码、提示、数据的Result对象
    public static <T> Result<T> ok(T data) {
        return new Result<>(Code.SUCCESS, "成功", data);
    }
//    返回不含数据的Result对象
    public static Result success() {
        return new Result(Code.SUCCESS, "成功", null);
    }
//    返回失败消息
    public static Result fail(String msg) {
        return new Result(Code.FAIL, msg, null);
    }
//    返回异常信息
    public static Result error(Object msg) {
        return new Result(Code.ERROR, (String)msg, null);
    }
}
