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
    <h1>Menu</h1>
    <table>
        <tr>
            <td>${menu.imgid}</td>
            <td><a href="/menu/read?mdx=${menu.mdx}">${menu.prodict}</a></td>
        </tr>
    </table>
</body>
</html>
