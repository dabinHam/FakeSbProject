package com.app.sb.domain;

import lombok.*;
import org.springframework.web.multipart.MultipartFile;

@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
@Builder
@ToString
public class MenuDTO {

    private int mdx;
//    private int islike;       // 상품 찜 하기 ( 추후 추가예정, 별도 저장table 필요)

    // 상품 구분,이름
    private String theme;
    private String product;

    // 설명, 이미지 (있을수도 있고 없을수도 있음.)
    private String explain;
    private String imgid;

    // 사이즈
    private String size;

    /* 성분표!! */
    private String allergy;
    // 추후 개선예정 ( 별도의 list 만들어서 )
    private String kcal;
    private String transfat;
    private String protein;
    private String sodium;
    private String sugars;
    private String caffeine;
}
