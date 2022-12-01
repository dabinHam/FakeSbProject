package com.app.sb.controller.member;

import com.app.sb.service.login.LoginService;
import lombok.extern.java.Log;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@Log4j2
@RequestMapping("/member/edit")
public class MemberModifyController {

    @Autowired
    private LoginService loginService;

    @GetMapping
    public String getEditForm(){
        return "member/editForm";
    }



}
