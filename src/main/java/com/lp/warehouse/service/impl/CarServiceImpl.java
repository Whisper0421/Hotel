package com.lp.warehouse.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.lp.warehouse.domain.Car;
import com.lp.warehouse.mapper.CarMapper;
import com.lp.warehouse.service.CarService;
import org.springframework.stereotype.Service;

@Service
public class CarServiceImpl extends ServiceImpl<CarMapper, Car> implements CarService {

}
