package com.shardingjdbc.example.demo.entity;

import lombok.Data;

import java.io.Serializable;

/**
 * (TOrder0)实体类
 *
 * @author makejava
 * @since 2021-07-04 19:42:02
 */
@Data
public class TOrder implements Serializable {
    private static final long serialVersionUID = 960060784097315582L;

    private Long orderId;

    private Integer userId;

    private String status;

    @Override
    public String toString() {
        return "TOrder{" +
                "orderId=" + getOrderId() +
                ", userId=" + getUserId() +
                ", status='" + getStatus() + '\'' +
                '}';
    }
}
