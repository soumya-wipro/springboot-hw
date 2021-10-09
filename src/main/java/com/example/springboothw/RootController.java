package com.example.springboothw;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class RootController {

    @GetMapping("/")
    public String getVersion() {

        return "Spring boot HW app :: v1.0";
    }
}
