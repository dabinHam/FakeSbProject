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
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@Log4j2
@RequestMapping("menu/modify")
public class MenuModifyController {

    @Autowired
    private MenuReadService menuReadService;
    @Autowired
    private MenuModifyService menuModifyService;


    @GetMapping
    public void getMenuModify(@RequestParam("no") int mdx, Model model){
            log.info("getMenuModify() .......");
            model.addAttribute("mdx",menuReadService.getMenu(mdx));
        }

    @PostMapping
    public String modift(MenuRegRequestDTO menuRegRequestDTO){
        log.info("modify post ...");
        log.info(menuRegRequestDTO);
        menuModifyService.modifyMenu(menuRegRequestDTO);
        return "redirect:/menu/modify";
    }



}
