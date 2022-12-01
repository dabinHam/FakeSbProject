package com.app.sb.service.login;

import com.app.sb.domain.MemberDTO;
import com.app.sb.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginService {

    @Autowired
    private MemberMapper memberMapper;

    public MemberDTO login(String uid, String upw) {
        return memberMapper.selectByIdPw(uid, upw);
    }


}
