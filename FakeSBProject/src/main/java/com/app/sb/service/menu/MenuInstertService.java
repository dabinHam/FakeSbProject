package com.app.sb.service.menu;


import com.app.sb.domain.MenuDTO;
import com.app.sb.mapper.MenuMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MenuInstertService {

    @Autowired(required = false)
    private MenuMapper menuMapper;

    public int insertMdx(MenuDTO menuDTO) {
        int result = 0;

        try {
            result = menuMapper.insertMdx(menuDTO);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;
    }
}
