<%--
  Created by IntelliJ IDEA.
  User: cheoho-hi
  Date: 2022-12-01
  Time: 오전 11:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>MyStarBucks</title>
</head>
<body>

  <H1>MyStarbucks</H1>

    ${loginInfo}

    <c:if test="${loginInfo ne null}">
        ${loginInfo.uid}
        <img src="image/member/${loginInfo.uphoto}"
    </c:if>

    <br>
    <a href="/logout">로그아웃</a>



</body>
</html>
