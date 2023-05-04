package com.zgh.application.controller;

import cn.hutool.core.date.DateUtil;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;

@RestController
@RefreshScope
public class TestController {

    @Value("${name}")
    private String name;

    @GetMapping("/testNa")
    public void testNa() throws InterruptedException {
        System.out.println(DateUtil.second(new Date()) + "秒" + DateUtil.millisecond(new Date()) + "名称" + name);
        Thread.sleep(3000);
    }

    @GetMapping("/testGetNum")
    public void testGetNum() throws InterruptedException {
        System.out.println("<<<<<<testGetNum-testGetNum-testGetNum>>>>>>");
    }

    public static void main(String[] args) {
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        System.out.println();
    }
}
