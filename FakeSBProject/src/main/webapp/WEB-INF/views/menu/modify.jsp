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
<body>
<h1>
    <a href="/index" style="width: 75%">
        <img src="/image/main/sb_logo.png" alt="로고">
    </a>
</h1>
<h3>메뉴수정</h3>
<form method="post">
    <table>
        <tr>
            <th>메뉴 번호</th>
            <td><input type="int" name="mdx" value="${menu.mdx}" readonly></td>
        </tr>
        <tr>
            <th>메뉴 구분</th>
            <td><input type="text" name="theme" value="${menu.theme}"></td>
        </tr>
        <tr>
            <th>메뉴</th>
            <td><input type="text" name="product" value="${menu.product}"></td>
        </tr>
        <tr>
            <th>칼로리(Kcal)</th>
            <td><input type="text" name="kcal" value="${menu.kcal}"></td>
        </tr>
        <tr>
            <th>당류(g)</th>
            <td><input type="text" name="transfat" value="${menu.transfat}"></td>
        </tr>
        <tr>
            <th>단백질(g)</th>
            <td><input type="text" name="protein" value="${menu.protein}"></td>
        </tr>
        <tr>
            <th>나트륨(mg)</th>
            <td><input type="text" name="sodium" value="${menu.sodium}"></td>
        </tr>
        <tr>
            <th>포화지방(g)</th>
            <td><input type="text" name="sugars" value="${menu.sugars}"></td>
        </tr>
        <tr>
            <th>카페인(mg)</th>
            <td><input type="text" name="" value="${menu.caffeine}"></td>
        </tr>
        <tr>
            <th></th>
            <td><input type="submit" value="등록"></td>
        </tr>
    </table>
</form>

</body>
</html>
