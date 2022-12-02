package com.app.sb.controller.menu;

import com.app.sb.service.menu.MenuListService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Log4j2
@RequestMapping("menu/modify")
public class MenuModifyController {

    @Autowired
    private MenuListService menuListService;

    @GetMapping
    public String getMenuModify(Model model){
        log.info("getMenuModify() .......");
        model.addAttribute("menuList",menuListService.getMenuList());
        return "menu/modify";
    }
}
