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
</head>
<link rel="stylesheet" href="/css/menu.css">
<body>
<h1>
    <a href="/index" style="width: 75%">
        <img src="/image/main/sb_logo.png" alt="로고">
    </a>
</h1>
<h3>메뉴관리 추가 | 수정 | 삭제 </h3>
<form <%--method="post" enctype="multipart/form-data"--%>>
    <table>
        <tr>
            <th>메뉴 번호</th>
            <th>메뉴 구분</th>
            <th>이미지등록</th>
            <th>메뉴(한글)</th>
            <th>메뉴(영문)</th>
            <th>짧은 설명문구</th>
            <th>긴 설명문구</th>
            <th>영양정보 사이즈</th>
            <th>1회 제공량(kcal)</th>
            <th>포화지방(g)</th>
            <th>단백질(g)</th>
            <th>나트륨(mg)</th>
            <th>당류(g)</th>
            <th>카페인(mg)</th>
            <th>알레르기 유발요인</th>
            <th></th>
        </tr>
        <c:forEach var="menu" items="${menuList}" varStatus="stat">
            <tr>
                <td>${menu.mdx}</td>
                <td>${menu.theme}</td>
                <td>${menu.mphoto}</td>
                <td>${menu.productko}</td>
                <td>${menu.producten}</td>
                <td>${menu.shortexpln}</td>
                <td>${menu.longexpln}</td>
                <td>${menu.size}</td>
                <td>${menu.kcal}</td>
                <td>${menu.transfat}</td>
                <td>${menu.protein}</td>
                <td>${menu.sodium}</td>
                <td>${menu.sugars}</td>
                <td>${menu.caffeine}</td>
                <td>${menu.allergy}</td>
                <td>
                    <a class="menu_btn" href="/menu/modify">수정</a> |
                    <a class="menu_btn" onclick="deleteMdx(${menu.mdx});">삭제</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</form>
<a class="menu_btn" href="/menu/insertForm">
    메뉴 등록
</a>
</body>
</html>
