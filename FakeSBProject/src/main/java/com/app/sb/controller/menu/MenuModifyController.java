package com.app.sb.controller.menu;

import com.app.sb.domain.MenuDTO;
import com.app.sb.domain.MenuRegRequestDTO;
import com.app.sb.service.menu.MenuListService;
import com.app.sb.service.menu.MenuModifyService;
import com.app.sb.service.menu.MenuReadService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@Log4j2
@RequestMapping("menu/modify")
public class MenuModifyController {

    @Autowired
    private MenuReadService menuReadService;
    @Autowired
    private MenuModifyService menuModifyService;


    @GetMapping
    public String getMenuModify(@RequestParam("no") int mdx, Model model){
            log.info("getMenuModify() .......");
            model.addAttribute("mdx",menuReadService.getMenu(mdx));
            return "menu/modify";
        }

    @PostMapping
    public String update(MenuRegRequestDTO menuRegRequestDTO){
        log.info("update post ..." + menuRegRequestDTO);
        menuModifyService.updateMenu(menuRegRequestDTO);
        return "redirect:/menu/manage";
    }



}
