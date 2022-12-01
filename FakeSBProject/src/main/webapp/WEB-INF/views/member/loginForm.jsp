<%--
  Created by IntelliJ IDEA.
  User: cheoho-hi
  Date: 2022-12-01
  Time: 오전 11:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>로그인</title>
</head>
<body>

  <form method="post" action="/login">
    <table>
      <tr>
        <td>아이디</td>
        <td><input type="text" name="uid"></td>
      </tr>
      <tr>
        <td>비밀번호</td>
        <td><input type="text" name="upw"></td>
      </tr>
      <tr>
        <td></td>
        <td><input type="submit" value="로그인"></td>
      </tr>
    </table>
  </form>

  <c:if test="${msg == false}">
    <p style="color: red">로그인에 실패하였습니다. 아이디 또는 패스워드를 확인해주세요. </p>
  </c:if>

  <a href="/member/register">회원가입</a>

</body>
</html>
