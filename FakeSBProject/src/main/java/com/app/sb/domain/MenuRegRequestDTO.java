package com.app.sb.domain;

import com.app.sb.mapper.MenuMapper;
import lombok.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Positive;
import java.io.File;
import java.io.IOException;
// 사용자로부터 받는 데이터 처리 (Form을 통하여)

@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
@Builder
@ToString
public class MenuRegRequestDTO {

    @Min(value = 1)
    @Max(value = 99)
    @Positive
    private int mdx;    // 상품번호
//    private int islike;       // 상품 찜 하기 ( 추후 추가예정, 별도 저장table 필요)


    @NotEmpty
    private String theme;       // 상품구분     콜드브루 에스프레소 프라푸치노 주스 티
    @NotEmpty
    private String productko;   // 상품명(한글)
    @NotEmpty
    private String producten;   // 상품명(영문)

    private MultipartFile mphoto;   // 커피이미지
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

    public MenuDTO toMenu(){
        MenuDTO menuDTO = MenuDTO.builder()
                .mdx(this.mdx)
                .theme(this.theme)
                .productko(this.productko)
                .producten(this.producten)
                .longexpln(this.longexpln)
                .shortexpln(this.shortexpln)
                .size(this.size)
                .allergy(this.allergy)
                .kcal(this.kcal)
                .transfat(this.transfat)
                .protein(this.protein)
                .sodium(this.sodium)
                .sugars(this.sugars)
                .caffeine(this.caffeine)
                .build();
        return menuDTO;
    }

}
