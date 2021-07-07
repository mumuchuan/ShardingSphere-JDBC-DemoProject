package com.shardingjdbc.example.demo.entity;

import lombok.Data;

import java.io.Serializable;

/**
 * (TAddress)实体类
 *
 * @author makejava
 * @since 2021-07-06 14:40:18
 */
@Data
public class TAddress implements Serializable {
    private static final long serialVersionUID = -68659687651734061L;

    private Long addressId;

    private Integer userId;

    private String address;

}
