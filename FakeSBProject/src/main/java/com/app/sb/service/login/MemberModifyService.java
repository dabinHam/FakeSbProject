package com.app.sb.service.login;

import com.app.sb.domain.MemberDTO;
import com.app.sb.domain.MemberRegRequestDTO;
import com.app.sb.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberModifyService {

    @Autowired
    private MemberMapper memberMapper;

    public int editMember(MemberRegRequestDTO memberRegRequestDTO){
        MemberDTO memberDTO = memberRegRequestDTO.toMember();
        return memberMapper.updateMember(memberDTO);
    }



}
