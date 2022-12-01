package com.app.sb.controller.member;

import com.app.sb.domain.MemberRegRequestDTO;
import com.app.sb.service.login.MemberRegService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

@Log4j2
@Controller
@RequestMapping("/member/register")
public class MemberRegController {

    @Autowired
    private MemberRegService memberRegService;

    @GetMapping
    public String getRegPage(){
        log.info("getRegPage...");
        return "member/registerForm";
    }

    @PostMapping
    public String register(@Valid MemberRegRequestDTO memberRegRequestDTO, BindingResult bindingResult, HttpServletRequest request){
        log.info("RegController register()...");
        if(bindingResult.hasErrors()){
            log.info(bindingResult.getAllErrors());
            return "redirect:/member/register";
        }
        log.info(memberRegRequestDTO.toMember());
        memberRegService.RegisterMember(memberRegRequestDTO, request);
        return "redirect:/index";
    }

}
