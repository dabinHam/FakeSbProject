package com.app.sb.controller.member;

import com.app.sb.mapper.MemberMapper;
import com.app.sb.service.login.MemberRemoveService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@Log4j2
public class MemberRemoveController {

    @Autowired
    private MemberRemoveService memberRemoveService;

    @GetMapping("/member/delete")
    public String deleteMember(@RequestParam("uid") String uid){
        log.info("delete..." + uid);
        memberRemoveService.deleteMember(uid);
        return "redirect:index";
    }


}
