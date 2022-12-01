<%--
  Created by IntelliJ IDEA.
  User: cheoho-hi
  Date: 2022-12-01
  Time: 오전 11:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>로그인</title>
</head>
<body>

  <form method="post">
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

  <a href="/member/register">회원가입</a>

</body>
</html>
