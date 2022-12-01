package com.app.sb.controller.member;

import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Log4j2
@Controller
@RequestMapping("/login")
public class LoginController {

    @GetMapping
    public String getLoginPage(){
        return "member/loginForm";
    }

}
