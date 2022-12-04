package com.app.sb.controller.menu;


import com.app.sb.service.menu.MenuListService;
import com.app.sb.service.menu.MenuReadService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/menu/read")
public class MenuReadController {

    @Autowired
    private MenuReadService menuReadService;

    @Autowired
    private MenuListService menuListService;

    @GetMapping
    public String getMenuList(Model model){
        model.addAttribute("menuList",menuListService.getMenuList());
        return "menu/read";
    }



}
