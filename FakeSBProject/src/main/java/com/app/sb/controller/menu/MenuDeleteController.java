package com.app.sb.controller.menu;


import com.app.sb.service.menu.MenuDeleteService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Log4j2
@Controller
public class MenuDeleteController {

    @Autowired
    private MenuDeleteService menuDeleteService;

    @GetMapping("/menu/delete")
    public String removeTodo(
            @RequestParam("mdx") int mdx
    ){
        log.info("delete ...  " + mdx);
        menuDeleteService.deleteMenu(mdx);
        return "redirect:/menu/list";
    }

}
