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
    <title>${menu.productko} | Starbucks Korea</title>

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
    <script>window.jQuery || document.write('<script src="/js/assets/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="/js/assets/vendor/popper.min.js"></script>
    <script src="/js/bootstrap/bootstrap.min.js"></script>
    <script src="/js/assets/js/vendor/holder.min.js"></script>
    <script src="/js/bootstrap/offcanvas.js"></script>

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
    <div class="my-md-5 .my-md-5 p-3 menu-read-main ">
        <h3 class="lh-150 font-weight-bold">${menu.theme}</h3>
        <span class="blind">${menu.mdx}</span>
        <div class="md-5 product_view p-md-3">
            <div class="col-5 read_img_box_le">
                <img src="/uploadfile/menu/${menu.mphoto}" alt="(${menu.productko}|${menu.producten}">
            </div>
            <div class="col-5 read_txt_box_ri">
                <div class="read_txt_t">
                    <h4 class="my-md-3">
                        ${menu.productko}
                            <br>
                            <span class="small">${menu.producten}</span>
                    </h4>
                    <p class="t1">${menu.shortexpln}</p>
                </div><%--//.read_txt_t--%>
                <div class="read_txt_bt">
                    <div class="product_info">
                        <p class="tit">제품 영양 정보</p>
                        <span>${menu.size}</span>
                    </div><%--//.product_info--%>
                    <div class="product_info_list">
                        <ul>
                            <li>
                                <dt>1회 제공량(kcal)</dt>
                                <dd>${menu.kcal}</dd>
                            </li>
                            <li>
                                <dt>포화지방(g)</dt>
                                <dd>${menu.transfat}</dd>
                            </li>
                            <li>
                                <dt>단백질(g)</dt>
                                <dd>${menu.protein}</dd>
                            </li>
                        </ul>
                        <ul>
                            <li>
                                <dt>나트륨(mg)</dt>
                                <dd>${menu.sodium}</dd>
                            </li>
                            <li>
                                <dt>당류(g)</dt>
                                <dd>${menu.sugars}</dd>
                            </li>
                            <li>
                                <dt>카페인(mg)</dt>
                                <dd>${menu.caffeine}</dd>
                            </li>
                        </ul>
                    </div><%--//..product_info_list--%>
                </div><%--//.read_txt_bt--%>
                <c:if test="${menu.allergy ne null}">
                    <div class="product_allergy">
                        <p>알레르기 유발요인 : ${menu.allergy}</p>
                    </div><%--//.product_allergy--%>
                </c:if>
            </div><%--//.read_txt_box_ri--%>
        </div><%--//.product_view--%>
        <div class="product_view_bt">
            <p>${menu.longexpln}</p>
        </div><%--//.product_view_bt--%>
    </div><%--//.menu-read-main--%>

</main>


</body>
</html>
