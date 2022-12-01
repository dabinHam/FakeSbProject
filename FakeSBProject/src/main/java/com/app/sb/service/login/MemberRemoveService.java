package com.app.sb.service.login;

import com.app.sb.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberRemoveService {

    @Autowired
    private MemberMapper memberMapper;

    public int deleteMember(String uid){
        return memberMapper.deleteMember(uid);
    }


}
