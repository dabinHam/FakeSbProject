package com.app.sb.controller.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member/mystarbucks")
public class MyPageController {

    @GetMapping
    public String getMyPage(){
        return "member/myStarbucksForm";
    }


}
