package com.app.sb.mapper;

import com.app.sb.domain.MemberDTO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberMapper {

    int insertMemer(MemberDTO memberDTO);

    MemberDTO selectByIdPw(String uid, String upw);


}
