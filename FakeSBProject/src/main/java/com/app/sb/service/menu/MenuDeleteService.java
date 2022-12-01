package com.app.sb.service.menu;


import com.app.sb.mapper.MenuMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MenuDeleteService {

    @Autowired(required = false)
    private MenuMapper menuMapper;

    public int deleteMdx(long mdx) {
        int result = 0;
        try {
            result =menuMapper.deleteMdx(mdx);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
}
