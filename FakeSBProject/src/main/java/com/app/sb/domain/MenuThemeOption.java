package com.app.sb.domain;


import lombok.*;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
@Builder
public class MenuThemeOption {
    // 테마 분류
    /*전체
    콜드브루
    에스프레소
    프라푸치노블렌디드
    티(티바나)
    주스(병음료)*/

    private String searchType;

    private String keyword;


}
