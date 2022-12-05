<%--
  Created by IntelliJ IDEA.
  User: yungwisang
  Date: 2022/12/01
  Time: 12:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="ko">
<head>
    <title>음료 | Starbucks Korea</title>

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
    <script>window.jQuery || document.write('<script src="js/assets/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="js/assets/vendor/popper.min.js"></script>
    <script src="js/bootstrap/bootstrap.min.js"></script>
    <script src="js/assets/js/vendor/holder.min.js"></script>
    <script src="js/bootstrap/offcanvas.js"></script>

</head>
<body class="m-md-5">
<header>
    <nav class="navbar navbar-expand-lg fixed-top navbar-light bg-light " >
        <div class="container">
            <a href="/index">
                <img src="https://www.starbucks.co.kr/common/img/common/logo.png" width="70px">
            </a>
            <button class="navbar-toggler p-0 border-0" type="button" data-toggle="offcanvas">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="navbar-collapse offcanvas-collapse m-sm-2" id="navbarsExampleDefault">

                <table>
                    <tr>
                        <td>
                            <ul class="navbar-nav mr-auto">
                                <c:if test="${loginInfo eq null}">
                                    <li class="nav-item active">
                                        <a class="nav-link" href="/login" style="color: red" >Sign in</a>
                                    </li>
                                </c:if>

                                <c:if test="${loginInfo ne null}">
                                    <li class="nav-item active">
                                        <a class="nav-link" href="/logout" style="color: red" >Sign out</a>
                                    </li>
                                </c:if>

                                <li class="nav-item active">
                                    <a class="nav-link" href="/member/mystarbucks" style="color: red"> My Starbucks</a>
                                </li>
                                <li class="nav-item active">
                                    <a class="nav-link" href="#">Customer Service & Ideas</a>
                                </li>
                                <li class="nav-item active">
                                    <a class="nav-link" href="#">Find a Store</a>
                                </li>
                                <form class="form-inline my-2 my-lg-0">
                                    <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
                                    <a href="#">
                                        <img alt="통합검색" src="//image.istarbucks.co.kr/common/img/common/icon_magnifier_black.png">
                                    </a>
                                </form>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <ul class="navbar-nav mr-auto">
                                <li class="nav-item active">
                                    <a class="nav-link" href="#">COFFEE<span class="sr-only">(current)</span></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="/menu/list" style="color: red">MENU</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">STORE</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">RESPONSIBILITY</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">STARBUCKS REWARDS</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">CORPORATE SALES</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">WHAT'S NEW</a>
                                </li>
                            </ul>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </nav>
</header>

<main role="main" class="container menu-main">
    <div class="my-md-5 p-3">
        <h3 class="lh-150">음료</h3>
    <c:if test="${loginInfo ne null}">
        <a class="menu_btn mana_btn" href="/menu/manage">
            메뉴관리
        </a>
    </c:if>
        <ul class="row menu-main-ul">
            <c:forEach var="menu" items="${menuList}" varStatus="stat">
                <li class="col-md-3">
                    <a href="/menu/read?mdx=${menu.mdx}" class="m_img_box">
                        <img src="/uploadfile/menu/${menu.mphoto}" alt="(${menu.productko}|${menu.producten}">
                    </a>
                    <a href="/menu/read" class="m_txt_box">
                            <p>${menu.productko}</p>
                    </a>
                </li>
            </c:forEach>
        </ul>
    </div>

</main>


</body>
</html>
