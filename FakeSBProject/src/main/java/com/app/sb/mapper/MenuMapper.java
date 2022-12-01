package com.app.sb.mapper;

import com.app.sb.domain.MemberDTO;
import com.app.sb.domain.MenuDTO;

import com.app.sb.domain.MenuSearchOption;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface MenuMapper {

    // 메뉴 전체 출력
    List<MenuDTO> selectAll();

    List<MenuDTO> selectByOption(MenuSearchOption searchOption);
    List<MenuDTO> selectByMdxs(List<Integer> mdxs);

    // 상세페이지 , mdx 값으로 하나의 product 정보를 가져오는 메소드
    MenuDTO selectByMdx(long mdx);

    // 등록
    int insertMdx(MenuDTO menuDTO);

    // 수정
    int updateMdx(MenuDTO menuDTO);

    // 삭제
    int deleteMdx(long mdx);



}
