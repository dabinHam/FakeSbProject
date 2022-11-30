package com.app.sb.mapper;

import com.app.sb.domain.MemberDTO;
import com.app.sb.domain.MenuDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface MenuMapper {

    // 메뉴 전체 출력
    public List<MenuDTO> selectAll();

    // mdx 값으로 하나의 product 정보를 가져오는 메소드
    public MenuDTO selectBymdx(long mdx);

    int insertProduct(MenuDTO dto);


}
