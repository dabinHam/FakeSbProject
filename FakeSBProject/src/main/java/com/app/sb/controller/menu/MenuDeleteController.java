package com.app.sb.controller.menu;


import com.app.sb.service.menu.MenuDeleteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MenuDeleteController {

    @Autowired
    private MenuDeleteService menuDeleteService;

    @PostMapping("/menu/delete")
    public String removeTodo(
            @RequestParam("mdx") int mdx
    ){
        menuDeleteService.deleteMdx(mdx);
        return "redirect:/todo/list";
    }

}
