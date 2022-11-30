package com.app.sb.service.login;

import com.app.sb.domain.MemberDTO;
import com.app.sb.domain.MemberRegRequestDTO;
import com.app.sb.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;

@Service
public class MemberRegService {

    @Autowired
    private MemberMapper memberMapper;

    public int memberReg(MemberRegRequestDTO memberRegRequestDTO, HttpServletRequest httpServletRequest){

        String newFileName = null;

        if(memberRegRequestDTO.getUphoto()!=null && memberRegRequestDTO.getUphoto().getSize()>0 && !memberRegRequestDTO.getUphoto().isEmpty()){
            String dirURI = "/image/member";
            String dirRealPath = httpServletRequest.getSession().getServletContext().getRealPath(dirURI);
            newFileName = System.nanoTime() + memberRegRequestDTO.getUphoto().getOriginalFilename();

            try {
                memberRegRequestDTO.getUphoto().transferTo(new File(dirRealPath, newFileName));
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }

        MemberDTO memberDTO = memberRegRequestDTO.toMember();

        if(newFileName!=null){
            memberDTO.setUphoto(newFileName);
        }
        return  memberMapper.insertMemer(memberDTO);
    }


}
