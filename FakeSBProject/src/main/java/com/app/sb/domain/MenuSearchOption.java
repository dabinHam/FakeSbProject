package com.app.sb.domain;


import lombok.*;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
@Builder
public class MenuSearchOption {
    // 테마 분류
    /*전체
    콜드브루
    에스프레소
    프라푸치노
    주스
    티*/

    private String searchType;
    private String keyword;


}
