package com.example.demoSpringJDBC;


import lombok.AllArgsConstructor;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;


import java.util.Arrays;

// exclude ile auto configuration yok sayılabiliyor
@SpringBootApplication//(exclude = DemoComp.class)
@AllArgsConstructor
public class DemoSpringJdbcApplication
{

    public static void main(String[] args)
    {
        SpringApplication.run(DemoSpringJdbcApplication.class, args);
    }



}