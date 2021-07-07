package com.shardingjdbc.example.demo;

import com.shardingjdbc.example.demo.dao.*;
import com.shardingjdbc.example.demo.entity.*;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest(classes = DemoApplication.class)
class DemoApplicationTests {

    @Autowired
    private TOrderDao tOrderDao;

    @Autowired
    private TAddressDao tAddressDao;

    @Test
    void insertTOrder() {
        TOrder tOrder = new TOrder();
        tOrder.setUserId(7);
        tOrder.setStatus("hahhaah");
        tOrderDao.insert(tOrder);
    }

    @Test
    void queryTOrder() {
        List<TOrder> list= tOrderDao.queryAll();
        for(TOrder order: list){
            System.out.println(order.toString());
        }
    }

    @Test
    void insertTAddress() {
        TAddress address = new TAddress();
        address.setUserId(3);
        address.setAddress("北京*****************");
        tAddressDao.insert(address);
    }

}
