package com.app.sb.controller.member;

import com.app.sb.domain.MemberDTO;
import com.app.sb.service.login.MemberModifyService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@Log4j2
@RequestMapping("/member/edit")
public class MemberModifyController {

    @Autowired
    private MemberModifyService memberModifyService;

    @GetMapping
    public String getEditForm(){
        log.info("getEditForm()...");
        return "member/editForm";
    }

    @PostMapping
    public String Edit(MemberDTO memberDTO, HttpSession session){
        log.info("edit..." + memberDTO);
        memberModifyService.editMember(memberDTO);
        session.invalidate();
        return "redirect:/login";
    }



}
