package com.jenkins.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SmokeTest {


    @GetMapping("/test-api")
    public String testApi () {
        return "hello from jenkins";
    }

}
