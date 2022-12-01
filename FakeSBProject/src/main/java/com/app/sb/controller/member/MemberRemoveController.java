package com.app.sb.controller.member;

import com.app.sb.mapper.MemberMapper;
import com.app.sb.service.login.MemberRemoveService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@Log4j2
public class MemberRemoveController {

    @Autowired
    private MemberRemoveService memberRemoveService;

    @RequestMapping(value = "/member/delete", method = RequestMethod.GET)
    public String getDeletePage(){
      return "/member/deleteForm";
    }

    @RequestMapping(value = "/member/delete/{uid}", method = RequestMethod.POST)
    public String deleteMember(@PathVariable("uid") String uid) {
        log.info("delete..." + uid);
        String path = "/delete/member/uid?=uid";
        memberRemoveService.deleteMember(uid);
        return "/index";

    }

}
