package com.ssmelnikov.demo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Map;

@Controller
public class LoginController {

    @RequestMapping(name="/login", method = RequestMethod.GET)
    public String loginGet(Map<String, Object> model) {
        return "login";

    }
}
