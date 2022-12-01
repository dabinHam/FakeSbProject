<%--
  Created by IntelliJ IDEA.
  User: cheoho-hi
  Date: 2022-12-01
  Time: 오후 12:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>회원 수정</title>
</head>
<body>

    <form method="post">
        <table>
            <tr>
                <td>아이디</td>
                <td><input type="text" name="uid" value="${loginInfo.uid}" disabled></td>
            </tr>
            <tr>
                <td>닉네임</td>
                <td><input type="text" name="nickname" value="${loginInfo.nickname}"></td>
            </tr>
            <tr>
                <td>전화번호</td>
                <td><input type="text" name="phone" value="${loginInfo.phone}"></td>
            </tr>
            <tr>
                <td>이메일</td>
                <td><input type="text" name="email" value="${loginInfo.email}"></td>
            </tr>
            <tr>
                <td>주소1</td>
                <td><input type="text" name="address1" value="${loginInfo.address1}"></td>
            </tr>
            <tr>
                <td>주소2</td>
                <td><input type="text" name="address2" value="${loginInfo.address2}"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="수정하기"></td>
            </tr>
        </table>

    </form>




</body>
</html>
