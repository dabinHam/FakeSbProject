package com.app.sb.domain;

import lombok.*;

import javax.validation.constraints.NotEmpty;
import java.time.LocalDate;

@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
@Builder
@ToString
public class MemberDTO {

    private int idx;

    private String uid;

    private String uuid;

    private String upw;

    private String uname;

    private String nickname;

    private String phone;

    private String email;

    private String address1;

    private String address2;

    private LocalDate regdate;

    private String uphoto;


}
