package com.app.sb.service.login;

import com.app.sb.domain.MemberDTO;
import com.app.sb.domain.MemberRegRequestDTO;
import com.app.sb.mapper.MemberMapper;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;

@Service
@Log4j2
public class MemberModifyService {

    @Autowired
    private MemberMapper memberMapper;

    public int editMember(MemberRegRequestDTO memberRegRequestDTO, HttpServletRequest request){
        String newFileName = null;
        if(memberRegRequestDTO.getUphoto()!=null && !memberRegRequestDTO.getUphoto().isEmpty()){
            String dirURI = "/uploadfile/member";
            String dirRealPath = request.getSession().getServletContext().getRealPath(dirURI);
            log.info("dirRealPath ... " + dirRealPath);
            newFileName = System.nanoTime() + memberRegRequestDTO.getUphoto().getOriginalFilename();
            try {
                memberRegRequestDTO.getUphoto().transferTo(new File(dirRealPath, newFileName));
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
        MemberDTO memberDTO = memberRegRequestDTO.toMember();
        if(newFileName!=null) {
            memberDTO.setUphoto(newFileName);
        }
        log.info(newFileName);
        log.info(memberDTO);
        return memberMapper.updateMember(memberDTO);
    }



}
