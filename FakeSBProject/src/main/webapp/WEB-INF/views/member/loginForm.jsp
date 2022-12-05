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

  <link rel="icon" href="/image/main/favicon.ico" type="image/ico">
  <!-- Bootstrap core CSS -->
  <link href="/css/bootstrap/bootstrap.min.css" rel="stylesheet">
  <!-- Custom styles for this template -->
  <link href="/css/bootstrap/offcanvas.css" rel="stylesheet">
</head>
<body>

<nav class="navbar navbar-expand-lg fixed-top navbar-light bg-light" >
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
</nav>

<main role="main" class="login-container">

  <div class="md-6 p-3 bg-white rounded box-shadow">

    <p class="text-center">로그인</p>
    <div class="text-center">
      <span style="color: #006633">Welcome!</span>
      <span class="text-black-50">스타벅스 코리아에 오신 것을 환영합니다.</span>
    </div>
    <hr>
    <form method="post" action="/login" class="form-group">
      <div class="form-group">
          <input type="text" name="uid" class="form-control" placeholder="아이디를 입력해 주세요.">
      </div>
      <div class="form-group">
          <input type="text" name="upw" class="form-control" placeholder="비밀번호를 입력해 주세요.">
      </div>
      <div class="pl-sm-4">
          <input type="checkbox" class="form-check-input" name="rememberId"><p>아이디저장</p>
      </div>

          <input type="submit" value="로그인" class="btn btn-success">

    </form>

    <c:if test="${msg == false}">
      <p style="color: red">로그인에 실패하였습니다. 아이디 또는 패스워드를 확인해주세요. </p>
    </c:if>

    <p class="small text-success">* 타 사이트와 비밀번호를 동일하게 사용할 경우 도용의 위험이 있으므로, 정기적인 비밀번호 변경을 해주시길 바랍니다.</p>
    <p class="small text-success">* 스타벅스 코리아의 공식 홈페이지는 Internet Explorer 9.0 이상, Chrome, Firefox, Safari 브라우저에 최적화 되어있습니다.</p>

    <a href="/register" style="color: gray">회원가입</a>

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
