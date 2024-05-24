package com.lp.warehouse.domain;

public enum DeliverStatusEnum {
    VAL_0(0, "待发货"),
    VAL_1(1, "已发货"),
    VAL_2(2, "已送达"),
    ;
    private Integer val;
    private String name;
    DeliverStatusEnum(Integer val, String name) {
        this.val = val;
        this.name = name;
    }

    public Integer getVal() {
        return val;
    }

    public String getName() {
        return name;
    }
}
