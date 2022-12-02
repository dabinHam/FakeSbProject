package com.app.sb.controller.menu;

import com.app.sb.service.menu.MenuListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/menu/list")
public class MenuListController {

    @Autowired
    private MenuListService menuListService;

/*    @Autowired
    private */

    @GetMapping
    public String getMenuList(Model model){
        model.addAttribute("menuList",menuListService.getMenuList());
        return "menu/list";
    }



}
