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
<form method="post">
    <label for="edit_btn">
        <input id="edit_btn" type="submit">
    </label>
    <table>
        <tr>
            <th>메뉴</th>
            <th>칼로리(Kcal)</th>
            <th>당류(g)</th>
            <th>단백질(g)</th>
            <th>나트륨(mg)</th>
            <th>포화지방(g)</th>
            <th>카페인(mg)</th>
            <th></th>
        </tr>
        <tr>
            <td>${menu.product}</td>
            <td>${menu.kcal}</td>
            <td>${menu.transfat}</td>
            <td>${menu.protein}</td>
            <td>${menu.sodium}</td>
            <td>${menu.sugars}</td>
            <td>${menu.caffeine}</td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td>${menu.kcal}</td>
            <td>${menu.transfat}</td>
            <td>${menu.protein}</td>
            <td>${menu.sodium}</td>
            <td>${menu.sugars}</td>
            <td>${menu.caffeine}</td>
            <td><input type="submit">완료</td>
        </tr>
    </table>
</form>

</body>
</html>
