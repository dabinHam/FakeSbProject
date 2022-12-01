package com.app.sb.controller.menu;

import com.app.sb.domain.MemberDTO;
import com.app.sb.domain.MenuDTO;
import com.app.sb.mapper.MenuMapper;
import com.app.sb.service.menu.MenuInstertService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

@Log4j2
@Controller
@RequestMapping("/menu/insertForm")
public class MenuInsertController {

    @Autowired
    private MenuInstertService menuInstertService;

    @GetMapping
    public String getInsertForm(){
        return "menu/insertForm";
    }

    @PostMapping
    public String insert(
            @Valid MenuDTO menuDTO,
            BindingResult bindingResult
    ){
        if (bindingResult.hasErrors()){
            log.info(bindingResult.getAllErrors());
            return "redirect:/menu/insertForm";

        }

        log.info(menuDTO);


        // 사용자가 입력한 데이터를 받아와야한다!!!
        log.info("todoDTO => " + menuDTO);
        menuInstertService.insertMdx(menuDTO);

        return "redirect:/menu/list";
    }

}
