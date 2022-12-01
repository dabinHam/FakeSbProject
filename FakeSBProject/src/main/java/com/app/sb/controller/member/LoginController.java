package com.app.sb.controller.member;

import com.app.sb.domain.MemberDTO;
import com.app.sb.service.login.LoginService;
import lombok.extern.log4j.Log4j2;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Log4j2
@Controller
@RequestMapping("/login")
public class LoginController {

    @Autowired
    private LoginService loginService;

    @GetMapping
    public String getLoginPage(){
        return "member/loginForm";
    }

    @PostMapping
    public String login(@RequestParam("uid") String uid, @RequestParam("upw") String upw, HttpServletRequest request, RedirectAttributes rttr){
        MemberDTO memberDTO = loginService.login(uid, upw);
        HttpSession session = request.getSession();

        if(memberDTO == null){
            session.setAttribute("loginInfo", null);
            rttr.addFlashAttribute("msg", false);
            return "redirect:/login";
        } else {
            session.setAttribute("loginInfo", memberDTO);
        }

        log.info("memberDTO >>> " + memberDTO);
        return "redirect:/index";
    }

}
