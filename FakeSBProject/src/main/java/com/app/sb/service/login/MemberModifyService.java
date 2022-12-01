package com.app.sb.service.login;

import com.app.sb.domain.MemberDTO;
import com.app.sb.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberModifyService {

    @Autowired
    private MemberMapper memberMapper;

    public int editMember(MemberDTO memberDTO){
        return memberMapper.updateMember(memberDTO);
    }



}
