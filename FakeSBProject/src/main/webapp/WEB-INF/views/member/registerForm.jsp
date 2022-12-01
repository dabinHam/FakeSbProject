<%--
  Created by IntelliJ IDEA.
  User: cheoho-hi
  Date: 2022-11-30
  Time: 오후 3:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>회원가입</title>
</head>
<body>

    회원 가입
    <form method="post" enctype="multipart/form-data">
    <table>
        <tr>
            <td></td>
            <td><input type="hidden" name="idx"></td>
        </tr>
        <tr>
            <td>아이디</td>
            <td><input type="text" name="uid"></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="hidden" name="uuid"></td>
        </tr>
        <tr>
            <td>패스워드</td>
            <td><input type="password" name="upw"></td>
        </tr>
        <tr>
            <td>이름</td>
            <td><input type="text" name="uname"></td>
        </tr>
        <tr>
            <td>닉네임</td>
            <td><input type="text" name="nickname"></td>
        </tr>
        <tr>
            <td>전화번호</td>
            <td><input type="text" name="phone"></td>
        </tr>
        <tr>
            <td>이메일</td>
            <td><input type="text" name="email"></td>
        </tr>
        <tr>
            <td>주소1</td>
            <td> <input type="text" name="address1"></td>
        </tr>
        <tr>
            <td>주소2</td>
            <td><input type="text" name="address2"></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="hidden" name="regdate"></td>
        </tr>
        <tr>
            <td>사진</td>
            <td><input type="file" name="uphoto"></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="가입하기"></td>
        </tr>
    </table>
    </form>


</body>
</html>
