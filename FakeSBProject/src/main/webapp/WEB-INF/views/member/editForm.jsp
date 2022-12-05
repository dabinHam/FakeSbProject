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

<main role="main" class="mypage-container">

    <H2 class="md-6 pb-3">회원 수정</H2>

    <form method="post" enctype="multipart/form-data">
        <table class="table">
            <tr>
                <td>아이디</td>
                <td><input type="text" name="uid" value="${loginInfo.uid}" readonly class="form-control-plaintext"></td>
            </tr>
            <tr>
                <td>닉네임</td>
                <td><input type="text" name="nickname" value="${loginInfo.nickname}" class="form-control"></td>
            </tr>
            <tr>
                <td>전화번호</td>
                <td><input type="text" name="phone" value="${loginInfo.phone}" class="form-control"></td>
            </tr>
            <tr>
                <td>이메일</td>
                <td><input type="text" name="email" value="${loginInfo.email}" class="form-control"></td>
            </tr>
            <tr>
                <%--주소 폼 시작--%>
                <td rowspan="2">
                    <input type="text" id="sample6_postcode" placeholder="우편번호" class="form-control mb-2" onclick="sample6_execDaumPostcode()">
                    <input type="text" name="address1" id="sample6_address" placeholder="주소" class="form-control">

                </td>
                <td rowspan="2">
                    <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" class="btn mb-2">
                    <input type="text" name="address2" id="sample6_detailAddress" placeholder="상세주소" class="form-control">
                </td>
            </tr>
            <tr>
                <td><input type="hidden" id="sample6_extraAddress"></td>
                <%--주소 폼 끝--%>
            </tr>
            <tr>
                <td>사진</td>
                <td>
                    <div class="input-group mb-3">
                        <div class="custom-file">
                            <input type="file" class="custom-file-input" name="uphoto" id="inputGroupFile02">
                            <label class="custom-file-label" for="inputGroupFile02" aria-describedby="inputGroupFileAddon02">파일 선택</label>
                        </div>
                    </div>
                </td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="수정하기" class="btn btn-success"></td>
            </tr>
        </table>

    </form>

</main>

    <!--다음 주소 서비스 script-->
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script>
        function sample6_execDaumPostcode() {
            new daum.Postcode({
                oncomplete: function(data) {
                    // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                    // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                    // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                    var addr = ''; // 주소 변수
                    var extraAddr = ''; // 참고항목 변수

                    //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                    if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                        addr = data.roadAddress;
                    } else { // 사용자가 지번 주소를 선택했을 경우(J)
                        addr = data.jibunAddress;
                    }

                    // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                    if(data.userSelectedType === 'R'){
                        // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                        // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                        if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                            extraAddr += data.bname;
                        }
                        // 건물명이 있고, 공동주택일 경우 추가한다.
                        if(data.buildingName !== '' && data.apartment === 'Y'){
                            extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                        }
                        // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                        if(extraAddr !== ''){
                            extraAddr = ' (' + extraAddr + ')';
                        }
                        // 조합된 참고항목을 해당 필드에 넣는다.
                        document.getElementById("sample6_extraAddress").value = extraAddr;

                    } else {
                        document.getElementById("sample6_extraAddress").value = '';
                    }

                    // 우편번호와 주소 정보를 해당 필드에 넣는다.
                    document.getElementById('sample6_postcode').value = data.zonecode;
                    document.getElementById("sample6_address").value = addr;
                    // 커서를 상세주소 필드로 이동한다.
                    document.getElementById("sample6_detailAddress").focus();
                }
            }).open();
        }
    </script>

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
