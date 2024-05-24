package com.lp.warehouse.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.lp.warehouse.domain.Deliver;
import com.lp.warehouse.vo.DeliverVo;

public interface DeliverService extends IService<Deliver> {
    void update(DeliverVo deliverVo);
}
