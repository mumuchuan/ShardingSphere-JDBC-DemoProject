package com.shardingjdbc.example.demo.entity;

import lombok.Data;

import java.io.Serializable;

/**
 * (TOrderItem0)实体类
 *
 * @author makejava
 * @since 2021-07-06 14:40:22
 */
@Data
public class TOrderItem implements Serializable {
    private static final long serialVersionUID = 602920835205641022L;

    private Long orderItemId;

    private Long orderId;

    private Integer userId;

    private String status;

}
