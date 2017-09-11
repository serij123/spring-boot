package com.ssmelnikov.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
public class HelloController {

    @RequestMapping("/helloGuest")
    public String getHello(Map<String, Object> model) {
        model.put("user", "Username");
        return "hello_guest";
    }
}
