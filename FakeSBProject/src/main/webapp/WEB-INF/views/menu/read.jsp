<%--
  Created by IntelliJ IDEA.
  User: yungwisang
  Date: 2022/12/01
  Time: 12:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Menu</title>

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
<%--    <h3>${menu.theme}</h3>

    <div>
        ${menu.mphoto}
    </div>

    <div>
        <h4></h4>
    </div>--%>


<form>
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
            <th>알레르기 유발요인 : </th>
        </tr>
        <c:forEach var="menu" items="${menuList}" varStatus="stat">
        <tr>
            <td>${menu.mdx}</td>
            <td></td>
            <td></td>
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
        </tr>
        </c:forEach>
    </table>
</form>

</body>
</html>
