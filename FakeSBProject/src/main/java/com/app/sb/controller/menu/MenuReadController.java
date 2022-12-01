package com.app.sb.controller.menu;


import com.app.sb.service.menu.MenuReadService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MenuReadController {

    @Autowired
    private MenuReadService menuReadService;

    @GetMapping("/menu/read")
    public void readMenu(Model model, @RequestParam("mdx") int mdx){
        model.addAttribute("menu",menuReadService.getMenu(mdx));
    }

}
