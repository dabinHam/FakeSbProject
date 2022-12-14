package com.app.sb.service.menu;


import com.app.sb.domain.MenuDTO;
import com.app.sb.mapper.MenuMapper;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;

//@Service
@Log4j2
@Service
public class MenuListService {
    @Autowired(required = false)
    private MenuMapper menuMapper;
    public List<MenuDTO> getMenuList() {
        List<MenuDTO> list = null;
        try {
//            @Cleanup Connection conn = ConnectionProvider.getInstance().getConnection();
            list = menuMapper.selectAll();
            log.info(list);
        } catch (Exception e) {
            e.printStackTrace();
            list = Collections.emptyList();
        }
        return list;
    }
}
