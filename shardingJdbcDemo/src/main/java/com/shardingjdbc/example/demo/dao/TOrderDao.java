package com.shardingjdbc.example.demo.dao;

import com.shardingjdbc.example.demo.entity.TOrder;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * (TOrder0)表数据库访问层
 *
 * @author makejava
 * @since 2021-07-04 19:42:03
 */
@Mapper
public interface TOrderDao {

    /**
     * 通过ID查询单条数据
     *
     * @param orderId 主键
     * @return 实例对象
     */
    TOrder queryById(Long orderId);

    /**
     * 查询指定行数据
     *
     * @return 对象列表
     */
    List<TOrder> queryAll();

    /**
     * 新增数据
     *
     * @param tOrder 实例对象
     * @return 影响行数
     */
    int insert(TOrder tOrder);

    /**
     * 修改数据
     *
     * @param tOrder 实例对象
     * @return 影响行数
     */
    int update(TOrder tOrder);

}

