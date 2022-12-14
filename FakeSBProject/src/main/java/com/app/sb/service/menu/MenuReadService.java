package com.app.sb.service.menu;


import com.app.sb.domain.MenuDTO;
import com.app.sb.domain.MenuRegRequestDTO;
import com.app.sb.mapper.MenuMapper;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

@Service
@Log4j2
public class MenuReadService {

    @Autowired(required = false)
    private MenuMapper menuMapper;

    public MenuDTO getMenu(int mdx) {
        MenuDTO menuDTO = null;
        try {
            menuDTO = menuMapper.selectByMdx(mdx);
            log.info(menuDTO);
        } catch (Exception e) {
            e.printStackTrace();
            menuDTO = new MenuDTO();
        }
        return menuDTO;
    }

}
