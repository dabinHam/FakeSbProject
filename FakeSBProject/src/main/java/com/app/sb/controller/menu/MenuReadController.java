package com.app.sb.controller.menu;


import com.app.sb.service.menu.MenuListService;
import com.app.sb.service.menu.MenuReadService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@Log4j2
@RequestMapping("/menu/read")
public class MenuReadController {

    @Autowired
    private MenuReadService menuReadService;

    @GetMapping
    public void getMenu(@RequestParam("mdx") int mdx, Model model){
        log.info("getMenuModify() .......");
        model.addAttribute("menu",menuReadService.getMenu(mdx));

    }



}
