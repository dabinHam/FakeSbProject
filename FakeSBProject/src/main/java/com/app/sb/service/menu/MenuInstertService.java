package com.app.sb.service.menu;


import com.app.sb.domain.MemberDTO;
import com.app.sb.domain.MemberRegRequestDTO;
import com.app.sb.domain.MenuDTO;
import com.app.sb.domain.MenuRegRequestDTO;
import com.app.sb.mapper.MenuMapper;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;

@Service
@Log4j2
public class MenuInstertService {

    @Autowired(required = false)
    private MenuMapper menuMapper;

    public int insertMdx(MenuRegRequestDTO menuRegRequestDTO, HttpServletRequest request){
        String newFileName = null;
        if(menuRegRequestDTO.getMphoto()!=null && !menuRegRequestDTO.getMphoto().isEmpty()){
            String uploadURI = "/uploadfile/memu";
            String dirRealPath = request.getSession().getServletContext().getRealPath(uploadURI);
            log.info(dirRealPath);
            log.info("dirRealPath ... " + dirRealPath);
            newFileName = System.nanoTime() + menuRegRequestDTO.getMphoto().getOriginalFilename();
            log.info(newFileName);
            try {
                menuRegRequestDTO.getMphoto().transferTo(new File(dirRealPath, newFileName));
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
        MenuDTO menuDTO = menuRegRequestDTO.toMenu();
        if(newFileName!=null){
            menuDTO.setMphoto(newFileName);
        }
        log.info(menuDTO);
        return menuMapper.insertMdx(menuDTO);
    }

}
