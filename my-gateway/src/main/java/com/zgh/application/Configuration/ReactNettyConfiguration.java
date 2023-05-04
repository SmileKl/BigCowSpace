package com.zgh.application.Configuration;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.client.reactive.ReactorResourceFactory;

@Configuration
public class ReactNettyConfiguration {
    @Value("${reactor.netty.worker-count}")
    private String workerCount;

    @Value("${reactor.netty.select-count}")
    private String selectCount;

    @Bean
    public ReactorResourceFactory reactorClientResourceFactory() {
        System.setProperty("reactor.netty.ioWorkerCount", workerCount);
        System.setProperty("reactor.netty.ioSelectCount", selectCount);
        return new ReactorResourceFactory();
    }
}