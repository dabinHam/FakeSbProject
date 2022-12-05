package com.app.sb.domain;

import lombok.*;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.constraints.NotEmpty;
import java.time.LocalDate;

@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
@Builder
@ToString
public class MemberRegRequestDTO {

    @NotEmpty(message = "아이디를 입력해주세요.")
    private String uid;

    @NotEmpty(message = "비밀번호를 입력해주세요.")
    private String upw;

    private String uname;

    private String nickname;

    private String phone;

    private String email;

    private String address1;

    private String address2;

    private LocalDate regdate;

    private MultipartFile uphoto;

    public MemberDTO toMember(){
        MemberDTO memberDTO = MemberDTO.builder().uid(this.uid).upw(this.upw).uname(this.uname).nickname(this.nickname).phone(this.phone).email(this.email).address1(this.address1).address2(this.address2).regdate(this.regdate).build();
        return memberDTO;
    }

}
