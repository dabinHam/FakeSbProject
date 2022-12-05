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
    <!-- Bootstrap core CSS -->
    <link href="/css/bootstrap/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="/css/bootstrap/offcanvas.css" rel="stylesheet">
</head>
<body>

<nav class="navbar navbar-expand-lg fixed-top navbar-light bg-light">
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
                                <a class="nav-link" href="/login" style="color: red">Sign in</a>
                            </li>
                        </c:if>

                        <c:if test="${loginInfo ne null}">
                            <li class="nav-item active">
                                <a class="nav-link" href="/logout" style="color: red">Sign out</a>
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
                                <img alt="통합검색"
                                     src="//image.istarbucks.co.kr/common/img/common/icon_magnifier_black.png">
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
</nav>

<main role="main" class="mypage-container">

    <H2 class="md-6 pb-3">MyStarbucks</H2>

    <div class="p-3 rounded box-shadow" style="background-color: #ebebeb">

        <span style="font-weight: bold">${loginInfo.uname}</span> <span>님 안녕하세요</span>

        <hr>
        <img src="/uploadfile/member/${loginInfo.uphoto}" width="150px">
        <br>
        <div class="pt-4">
            <a href="/member/edit" class="btn-sm btn-outline-secondary">회원수정</a>
            <a href="/member/delete" class="btn-sm btn-outline-secondary">회원탈퇴</a>
        </div>

    </div>

    <div class="mt-5 p-3 rounded box-shadow" style="background-color: #ebebeb">
        <p>새로운 스타벅스 매장을 소개합니다.</p>
        <p>전국의 새로운 스타벅스의 얼굴들을 만나보세요~!</p>
    </div>

    <div class="mt-5 p-3 rounded box-shadow" style="background-color: #ebebeb">
        <p>찜한 메뉴</p>
    </div>


</main>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script>window.jQuery || document.write('<script src="js/assets/vendor/jquery-slim.min.js"><\/script>')</script>
<script src="js/assets/vendor/popper.min.js"></script>
<script src="js/bootstrap/bootstrap.min.js"></script>
<script src="js/assets/js/vendor/holder.min.js"></script>
<script src="js/bootstrap/offcanvas.js"></script>


</body>



</html>
