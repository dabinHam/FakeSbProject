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

@Log4j2
@Service
public class MemberRegService {

    @Autowired
    public MemberMapper memberMapper;

    public int registerMember(MemberRegRequestDTO memberRegRequestDTO, HttpServletRequest request){
        String newFileName = null;
        if(memberRegRequestDTO.getUphoto()!=null && !memberRegRequestDTO.getUphoto().isEmpty()){
            String dirURI = "/uploadfile/member";
            log.info(dirURI);
            String dirRealPath = request.getSession().getServletContext().getRealPath(dirURI);
            log.info("dirRealPath ... " + dirRealPath);
            newFileName = System.nanoTime() + memberRegRequestDTO.getUphoto().getOriginalFilename();
            log.info(newFileName);
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
        log.info(memberDTO);
        return memberMapper.insertMemer(memberDTO);
    }


}
