package com.app.sb.controller.member;

import com.app.sb.service.login.MemberRegService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member/register")
public class MemberRegController {

    @GetMapping
    public String getRegPage(){
        return "member/registerForm";
    }


}
