<%--
  Created by IntelliJ IDEA.
  User: yungwisang
  Date: 2022/12/01
  Time: 4:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>

    <link rel="icon" href="/image/main/favicon.ico" type="image/ico">

    <!-- Bootstrap core CSS -->
    <link href="/css/bootstrap/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="/css/bootstrap/offcanvas.css" rel="stylesheet">
    <link rel="stylesheet" href="/css/reset.css">
    <link rel="stylesheet" href="/css/custom.css">
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="/js/assets/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="/js/assets/vendor/popper.min.js"></script>
    <script src="/js/bootstrap/bootstrap.min.js"></script>
    <script src="/js/assets/js/vendor/holder.min.js"></script>
    <script src="/js/bootstrap/offcanvas.js"></script>
</head>

<body>
<h1>
    <a href="/index" style="width: 75%">
        <img src="/image/main/sb_logo.png" alt="로고">
    </a>
</h1>
<h3>메뉴수정</h3>
<form method="post" enctype="multipart/form-data">
    <table>
        <tr>
            <th>메뉴 번호</th>
            <td><input type="number" name="mdx" value="${mdx.mdx}" readonly></td>
        </tr>
        <tr>
            <th>메뉴 구분</th>
            <td>
                <select name="theme" id="theme">
                    <option selected>${mdx.theme}</option>
                    <option>콜드브루</option>
                    <option>에스프레소</option>
                    <option>프라푸치노</option>
                    <option>주스</option>
                    <option>티</option>
                </select>
            </td>
        </tr>

        <tr>
            <th>이미지등록</th>
            <td><input type="file" name="mphoto" value="${mdx.mphoto}"></td>
        </tr>
        <tr>
            <th>메뉴(한글)</th>
            <td><input type="text" name="productko" value="${mdx.productko}"></td>
        </tr>
        <tr>
            <th>메뉴(영문)</th>
            <td><input type="text" name="producten" value="${mdx.producten}"></td>
        </tr>
        <tr>
            <th>짧은 설명문구</th>
            <td><input type="text" name="shortexpln" value="${mdx.shortexpln}"></td>
        </tr>
        <tr>
            <th>긴 설명문구</th>
            <td>
                <textarea name="longexpln" cols="20" rows="10" >내용을 입력하세요</textarea>
            </td>
        </tr>
        <tr>
            <th>영양정보 사이즈</th>
            <td>
                <select name="size" id="size">
                    <option selected>${mdx.size}</option>
                    <option>Solo(솔로) / 22ml(0.75 fl oz)</option>
                    <option>Tall(톨) / 355ml(12 fl oz)</option>
                    <option>Bootle(보틀) / 500ml(17 fl oz)</option>
                    <option>Grande(그란데) / 473ml(16 fl oz)</option>
                    <option>병음료 190ML</option>
                    <option>병음료 591ML</option>
                    <option>207ml(7 fl oz)</option>
                </select>
            </td>
        </tr>
        <tr>
            <th>1회 제공량(kcal)</th>
            <td><input type="text" name="kcal" value="${mdx.kcal}"></td>
        </tr>
        <tr>
            <th>포화지방(g)</th>
            <td><input type="text" name="transfat" value="${mdx.transfat}"></td>
        </tr>
        <tr>
            <th>단백질(g)</th>
            <td><input type="text" name="protein" value="${mdx.protein}"></td>
        </tr>
        <tr>
            <th>나트륨(mg)</th>
            <td><input type="text" name="sodium" value="${mdx.sodium}"></td>
        </tr>
        <tr>
            <th>당류(g)</th>
            <td><input type="text" name="sugars" value="${mdx.sugars}"></td>
        </tr>
        <tr>
            <th>카페인(mg)</th>
            <td><input type="text" name="caffeine" value="${mdx.caffeine}"></td>
        </tr>
        <tr>
            <th>알레르기 유발요인</th>
            <td><input type="text" name="allergy" value="${mdx.allergy}"></td>
        </tr>
        <tr>
            <th></th>
            <td><input type="submit" value="수정"></td>
        </tr>
    </table>
</form>

</body>
</html>
