package com.shardingjdbc.example.demo.dao;

import com.shardingjdbc.example.demo.entity.TAddress;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * (TAddress)表数据库访问层
 *
 * @author makejava
 * @since 2021-07-06 14:40:18
 */
@Mapper
public interface TAddressDao {

    /**
     * 通过ID查询单条数据
     *
     * @param addressId 主键
     * @return 实例对象
     */
    TAddress queryById(Long addressId);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    List<TAddress> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);

    /**
     * 新增数据
     *
     * @param tAddress 实例对象
     * @return 影响行数
     */
    int insert(TAddress tAddress);

    /**
     * 批量新增数据（MyBatis原生foreach方法）
     *
     * @param entities List<TAddress> 实例对象列表
     * @return 影响行数
     */
    int insertBatch(@Param("entities") List<TAddress> entities);

    /**
     * 批量新增或按主键更新数据（MyBatis原生foreach方法）
     *
     * @param entities List<TAddress> 实例对象列表
     * @return 影响行数
     */
    int insertOrUpdateBatch(@Param("entities") List<TAddress> entities);

    /**
     * 修改数据
     *
     * @param tAddress 实例对象
     * @return 影响行数
     */
    int update(TAddress tAddress);

}

