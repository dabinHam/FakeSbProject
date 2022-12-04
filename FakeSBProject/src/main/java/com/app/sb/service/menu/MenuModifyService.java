package com.app.sb.service.menu;

import com.app.sb.domain.MemberDTO;
import com.app.sb.domain.MenuDTO;
import com.app.sb.domain.MenuRegRequestDTO;
import com.app.sb.mapper.MenuMapper;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Log4j2
public class MenuModifyService {

    @Autowired(required = false)
    private MenuMapper menuMapper;

    public int updateMenu(MenuRegRequestDTO menuRegRequestDTO){
        MenuDTO menuDTO = menuRegRequestDTO.toMenu();
        return menuMapper.updateMdx(menuDTO);
    }

}
