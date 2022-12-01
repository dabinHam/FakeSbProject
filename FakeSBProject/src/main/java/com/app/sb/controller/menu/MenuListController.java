package com.app.sb.controller.menu;

import com.app.sb.service.menu.MenuListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/memu/list")
public class MenuListController {

    @Autowired
    private MenuListService menuListService;

    @RequestMapping("/menu/list")
    public String getMenuList(Model model){
        model.addAttribute("menuList",menuListService.getMenuList());
        return "list";
    }



}
