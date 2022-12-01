package com.app.sb.controller.menu;


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

    @GetMapping
    public String getreadMenu(Model model){
        model.addAttribute("menu",menuReadService.getMenu(1));
        return "menu/read";
    }

}
