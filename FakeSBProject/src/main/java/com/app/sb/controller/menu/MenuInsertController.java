package com.app.sb.controller.menu;

import com.app.sb.domain.MemberDTO;
import com.app.sb.domain.MemberRegRequestDTO;
import com.app.sb.domain.MenuDTO;
import com.app.sb.domain.MenuRegRequestDTO;
import com.app.sb.mapper.MenuMapper;
import com.app.sb.service.menu.MenuInstertService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.io.File;
import java.io.IOException;

@Log4j2
@Controller
@RequestMapping("/menu/insertForm")
public class MenuInsertController {

    @Autowired
    private MenuInstertService menuInstertService;

    @GetMapping
    public String getInsertForm(){
        log.info("getinsertForm...");
        return "menu/insertForm";
    }
    @PostMapping
    public String insert(@Valid MenuRegRequestDTO menuRegRequestDTO,
                         BindingResult bindingResult,
                         HttpServletRequest request){
        log.info("MenuInsertController insert()...");
        if(bindingResult.hasErrors()){
            log.info(bindingResult.getAllErrors());
            return "redirect:/menu/insertForm";
        }
        log.info(menuRegRequestDTO.toMenu());
        log.info(menuRegRequestDTO);
        log.info("menuRegRequestDTO ->>>" + menuRegRequestDTO);
        menuInstertService.regMenu(menuRegRequestDTO, request);

        return "redirect:/index";
    }

/*    @PostMapping
    public String insertMenu(
            @Valid MenuDTO menuDTO,
            BindingResult bindingResult
    ){
        log.info("insertMenuForm ...");
        log.info(menuDTO);
        if(bindingResult.hasErrors()){
            log.info(bindingResult.getAllErrors());
            for(ObjectError objectError : bindingResult.getAllErrors()){
                log.info(objectError.getCodes()[1] + " : " + objectError.getDefaultMessage());
            }
        }
        menuInstertService.insertMdx(menuDTO);
        return "redirect:/menu/list";
    }

    @PostMapping("/menu/list")
    public String insertMenuFile(
        MenuDTO menu,
        HttpServletRequest request,
        Model model
    ) throws IOException {
            log.info("???????????? : " + menu.getMdx());
            log.info("???????????? : " + menu.getTheme());
            log.info("????????????   : " + menu.getTheme());
            log.info("??????????????? : " + menu.getMphoto().getOriginalFilename());

            String uploadURI = "/uploadfile/memu";
            // ???????????????(????????????) ????????? ?????????????????? ??????
            String dirRealPath = request.getSession().getServletContext().getRealPath(uploadURI);
            log.info(dirRealPath);

            // ??????
            menu.getMphoto().transferTo(new File(dirRealPath, menu.getMphoto().getOriginalFilename()));
            model.addAttribute("mdx", menu.getMdx());
            model.addAttribute("theme", menu.getTheme());
            model.addAttribute("productko", menu.getProductko());
            model.addAttribute("producten", menu.getProducten());
            model.addAttribute("mphoto", menu.getMphoto().getOriginalFilename());
            model.addAttribute("longexpln", menu.getLongexpln());
            model.addAttribute("shortexpln", menu.getShortexpln());
            model.addAttribute("size", menu.getSize());
            model.addAttribute("allergy", menu.getAllergy());
            model.addAttribute("kcal", menu.getKcal());
            model.addAttribute("transfat", menu.getTransfat());
            model.addAttribute("protein", menu.getProtein());
            model.addAttribute("sodium", menu.getSodium());
            model.addAttribute("sugars", menu.getSugars());
            model.addAttribute("caffeine", menu.getCaffeine());

            return "menu/read";
        }*/

}
