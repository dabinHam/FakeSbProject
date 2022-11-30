package com.app.sb.service.login;

import com.app.sb.domain.MemberDTO;
import com.app.sb.domain.MemberRegRequestDTO;
import com.app.sb.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberRegService {

    @Autowired
    public MemberMapper memberMapper;

    public int RegisterMember(MemberRegRequestDTO memberRegRequestDTO){
        MemberDTO memberDTO = memberRegRequestDTO.toMember();
        return memberMapper.insertMemer(memberDTO);
    }


}
