package com.app.sb.domain;

import lombok.*;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Positive;

@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
@Builder
@ToString
public class MenuDTO {

    private int mdx;    // 상품번호
//    private int islike;       // 상품 찜 하기 ( 추후 추가예정, 별도 저장table 필요)

    private String theme;       // 상품구분     콜드브루 에스프레소 프라푸치노 주스 티

    private String productko;   // 상품명(한글)

    private String producten;   // 상품명(영문)

    private String mphoto;   // 커피이미지
    private String longexpln;   // 긴 설명문구
    private String shortexpln;  // 짧은 소개


    /*info_content 음료 내부정보*/
    private String size;    // 사이즈
                            // Tall(톨) / 355ml(12 fl oz)
                            // 207ml(7 fl oz)
                            // Solo(솔로) / 22ml(0.75 fl oz)
                            // Bootle(보틀) / 500ml(17 fl oz)
                            // Grande(그란데) / 473ml(16 fl oz)
                            // 병음료 591ML    |   190ML
    /* 성분표!! */
    private String allergy;     // 알레르기 유발요인 : 우유 복숭아 사과 ...
    private String kcal;        // 1회 제공량(kcal)
    private String transfat;    // 포화지방(g)
    private String protein;     // 단백질(g)
    private String sodium;      // 나트륨(g)
    private String sugars;      // 당류(g)
    private String caffeine;    // 카페인(mg)
}
