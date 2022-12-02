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
</head>
<body>
<h1>
    <a href="/index" style="width: 75%">
        <img src="/image/main/sb_logo.png" alt="로고">
    </a>
</h1>
    <h3>Menu</h3>
    <a href="/menu/modify">
        메뉴수정
    </a>
    <a href="/menu/insertForm">
        메뉴 등록
    </a>
<ul>
    <c:forEach var="menu" items="" varStatus="status">
    <li>
        <a href="/menu/read">
            <div>
                <img src="/uploadfile/menu/${menu.mphoto}" alt="커피이미지(${menu.productko}|${menu.producten}">
            </div>
        </a>
        <a href="/menu/read">
            ${menu.productko}
        </a>
    </li>
    </c:forEach>
</ul>

</body>
</html>
