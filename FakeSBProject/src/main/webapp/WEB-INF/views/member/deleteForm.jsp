<%--
  Created by IntelliJ IDEA.
  User: cheoho-hi
  Date: 2022-12-01
  Time: 오후 6:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>회원탈퇴</title>

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

            <li class="nav-item active">
              <a class="nav-link" href="/logout" style="color: red" >Sign out</a>
            </li>
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

<main role="main" class="container mt-5 pt-3">

  회원 탈퇴

  <form method="post">
    <table>
      <tr>
        <td></td>
        <td><input type="hidden" name="uid" value="${loginInfo.uid}"></td>
      </tr>
      <tr>
        <td></td>
        <td><input type="submit" value="탈퇴하기"></td>
      </tr>
    </table>
  </form>

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
