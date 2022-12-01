package com.app.sb.controller.member;

import com.app.sb.service.login.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/member/mystarbucks")
public class MyPageController {

    @Autowired
    private LoginService loginService;

    @GetMapping
    public String getMyPage(){
        return "member/myStarbucksForm";
    }


}
