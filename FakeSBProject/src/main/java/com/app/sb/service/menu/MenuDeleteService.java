package com.app.sb.service.menu;


import com.app.sb.mapper.MenuMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MenuDeleteService {

    @Autowired(required = false)
    private MenuMapper menuMapper;

    public int deleteMenu(int mdx){
        return menuMapper.deleteMdx(mdx);
    }
}
