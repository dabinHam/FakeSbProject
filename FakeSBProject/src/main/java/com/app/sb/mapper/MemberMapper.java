package com.app.sb.mapper;

import com.app.sb.domain.MemberDTO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface MemberMapper {

    int insertMemer(MemberDTO memberDTO);

    MemberDTO selectByIdPw(@Param("uid") String uid, @Param("upw") String upw);  // selectByIdPw("cool", "1111")

    int deleteMember(@Param("uid") String uid);

}
