package com.app.sb.domain;

import lombok.*;
import org.springframework.web.multipart.MultipartFile;

import java.time.LocalDate;

@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
@Builder
@ToString
public class MemberRegRequestDTO {

    private String uid;

    private String upw;

    private String uname;

    private String nickname;

    private String phone;

    private String email;

    private String address1;

    private String address2;

    private LocalDate regdate;

    private MultipartFile uphoto;

}
