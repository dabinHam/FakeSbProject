package com.app.sb.controller.member;

import com.app.sb.domain.MemberRegRequestDTO;
import com.app.sb.service.login.MemberRegService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member/register")
public class MemberRegController {

    @Autowired
    private MemberRegService memberRegService;

    @GetMapping
    public String getRegPage(){
        return "member/registerForm";
    }

    @PostMapping
    public String register(MemberRegRequestDTO memberRegRequestDTO){
        memberRegService.RegisterMember(memberRegRequestDTO);
        return "redirect:member/register";
    }

}
