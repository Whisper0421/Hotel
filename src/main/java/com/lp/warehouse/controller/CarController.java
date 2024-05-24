package com.lp.warehouse.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.lp.sys.common.Constast;
import com.lp.sys.common.DataGridView;
import com.lp.sys.common.ResultObj;
import com.lp.warehouse.domain.Car;
import com.lp.warehouse.domain.Deliver;
import com.lp.warehouse.dto.CarListDto;
import com.lp.warehouse.mapper.DeliverMapper;
import com.lp.warehouse.service.CarService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;
import java.util.List;

@RestController
@RequestMapping("/car")
public class CarController {
    @Autowired
    CarService carService;

    @Autowired
    DeliverMapper deliverMapper;

    @RequestMapping("/list")
    public DataGridView all(CarListDto dto) {
        IPage<Car> page = new Page<>(dto.getPage(), dto.getLimit());

        QueryWrapper<Car> qw = new QueryWrapper<>();
        qw.eq(dto.getStatus() != null,"status", dto.getStatus());
        qw.orderByDesc("id");

        carService.page(page, qw);

        return new DataGridView(page.getTotal(), page.getRecords());
    }

    @RequestMapping("/alllist")
    public DataGridView all(Integer status) {
        QueryWrapper<Car> qw = new QueryWrapper<>();
        qw.eq(status != null,"status", status);
        qw.orderByDesc("id");

        List<Car> list = carService.list(qw);
        return new DataGridView(list);
    }

    @RequestMapping("/save")
    public ResultObj save(Car car) {
        try {
            QueryWrapper<Car> queryWrapper = new QueryWrapper<>();
            queryWrapper.eq("carno", car.getCarno());
            queryWrapper.ne(car.getId() != null, "id", car.getId());

            if(carService.count(queryWrapper) > 0) {
                return new ResultObj(Constast.ERROR, "车牌号已经存在");
            }

            if(car.getId() != null) {
                Car old = carService.getById(car.getId());
                carService.updateById(car);

                // deliver 表更新车牌号
                if (!StringUtils.equals(old.getCarno(), car.getCarno())) {
                    LambdaUpdateWrapper<Deliver> updateWrapper = new LambdaUpdateWrapper<>();
                    updateWrapper.set(Deliver::getCarno, car.getCarno());
                    updateWrapper.eq(Deliver::getCarno, old.getCarno());

                    deliverMapper.update(null, updateWrapper);
                }
            } else {
                car.setCreatetime(new Date());
                carService.save(car);
            }
            return ResultObj.OPERATE_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.OPERATE_ERROR;
        }
    }
}
