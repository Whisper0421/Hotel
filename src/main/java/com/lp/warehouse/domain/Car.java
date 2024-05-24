package com.lp.warehouse.domain;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.util.Date;

@Data
@TableName("bus_car")
public class Car {
    private Integer id;
    /**
     * 车牌号
     */
    private String carno;
    /**
     * 联系人
     */
    private String contract;
    private String phone;
    private String remark;

    /**
     * 状态 0-不可用 1-启用 2-占用
     */
    private Integer status;

    private Date createtime;
}
