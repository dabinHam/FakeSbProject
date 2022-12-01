package com.app.sb.controller.member;

import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpSession;

@Controller
@Log4j2
public class LogoutController {

   @GetMapping("/logout")
    public String logout(HttpSession session) {
       session.invalidate();
       return "redirect:index";
   }

}
