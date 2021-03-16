<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-kuru</title>
    <link rel="shortcut icon" href="../resources/img/HatchfulExport-All/ekuru_logo.ico">
    <link rel="stylesheet" href="../resources/css/superplan.css">
    <link rel="stylesheet" href="../resources/css/mypage-pointpricing.css">
    <link rel="stylesheet" href="../resources/css/header_Origin.css">
    <link rel="stylesheet" href="../resources/css/main-footer.css">
    <link rel="stylesheet" href="../resources/css/bootstrap-4.6.0-dist/css/bootstrap-grid.css">
    <link rel="stylesheet" href="../resources/css/bootstrap-4.6.0-dist/css/bootstrap-grid.min.css">
    <link rel="stylesheet" href="../resources/css/bootstrap-4.6.0-dist/css/bootstrap-reboot.css">
    <link rel="stylesheet" href="../resources/css/bootstrap-4.6.0-dist/css/bootstrap-reboot.min.css">
    <link rel="stylesheet" href="../resources/css/bootstrap-4.6.0-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../resources/css/bootstrap-4.6.0-dist/css/bootstrap.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript">
		function openSPlanContract(){
			var adTotal = document.getElementById('adTotal').value;

			location.href="/ad/superplan_contract?adTotal="+adTotal;
		}

		function openPointPricing(){
			location.href="/user/mypage_pointPricing"
		}
    </script>
    <style>
        * {
            font-family: 'NotSansCJKjp-Black', sans-serif !important;

        }

        body {
            background-color: #FFDFB9;
        }
    </style>
</head>

<body>
     <!-- header -->
    <header class="header---">
        <div class="wrapper">
            <a href="/">
                <img src="../resources/img/HatchfulExport-All/ekuru_logo.png" style="width: 4%; position: absolute;">
            </a>
            <nav>
                <ul class="menu">
                    <li class="menu-list headli">
                        <a class="menu-a" href="/user/mypageMain">My Page</a>
                        <ul class="menu-sub">
                            <li class="headli"><a href="/user/viewedItems">Recently viewed items</a></li>
                            <li class="headli"><a href="/user/chatForm">My Chat</a></li>
                            <li class="headli"><a class="sub-a"  href="/user/mypageShopping">My Cart</a></li>
                        </ul>
                    </li>
                    <li class="headli"><a class="menu-a" href="/ad/superplan">SPlan?</a></li>
                    <%-- <li class="headli"><a class="menu-a" href="">Board</a></li> --%>
                    <li class="headli"><a class="menu-a" href="/user/mypagePoint">${sessionScope.userPoint }P</a></li>
                    <li class="headli"><a class="menu-a" href="/user/logout">Logout</a></li>
                </ul>
            </nav>
        </div>
    </header>
    <!-- header -->
    <div class="container text-center">
        <!-- 수퍼패스 글자 애니메이션 -->
        <div class="row">
            <span class="word-container" data-word="SUPER PLAN" data-word-repeat="4"
                data-text-colors="#FCA400,#0046DB,#FD0000,#FEFCFE"></span>

            <div class="support">
                <a href="https://twitter.com/DevLoop01" target="_blank"><i class="fab fa-twitter-square"></i></a>
                <a href="https://dribbble.com/devloop01" target="_blank"><i class="fab fa-dribbble"></i></a>
            </div>
            <!-- partial -->
            <script src="../resources/js/superplan.js"></script><br>
        </div>
        <!-- 수퍼패스 설명 -->
        <div class="text-center div-margin">
            <h1>What is 'SUPER PLAN'?</h1>
            <p>Super plan is leading your post quickly.<br>
                Request or Channel holder can use this plan to advertise their post.</p>
        </div>
        <!-- 수퍼패스 포인트 사용 또는 충전 -->
        <div class="row justify-content-md-center card super-pass-box" style="margin-left: 25%;">
            <h5 class="card-header">Super pass of E-kuru</h5>
            <div class="card-body">
                <h5 class="card-title">Buy your pass!</h5>
                <p class="card-text">If you buy your super pass, then you can advertise your post </p>
                <input type="text" id="adTotal" name="adTotal"><span style="margin-left: 2%;">P</span><br>
                <button  class="btn btn-danger" style="margin-top: 5%;margin-bottom: 5%;" onclick="openSPlanContract();">Buy Pass</button>
                <a href="#" class="btn btn-danger" style="margin-top: 5%;margin-bottom: 5%;" onclick="openPointPricing();">Charge</a>
            </div>
        </div>

    </div>
    <!-- include tag Footer Start -->
    <div class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-7">
                    <div class="row">
                        <!-- 주소지 -->
                        <div class="col-md-6">
                            <div class="footer-contact">
                                <h2>Our Head Office</h2>
                                <p><i class="fa fa-map-marker-alt"></i>서울 강남구 영동대로 513</p>
                                <p><i class="fa fa-phone-alt"></i>02-6000-0114</p>
                                <p><i class="fa fa-envelope"></i>E-kuru co.</p>
                                <div class="footer-social">
                                    <a href=""><i class="fab fa-twitter"></i></a>
                                    <a href=""><i class="fab fa-facebook-f"></i></a>
                                    <a href=""><i class="fab fa-youtube"></i></a>
                                    <a href=""><i class="fab fa-instagram"></i></a>
                                    <a href=""><i class="fab fa-linkedin-in"></i></a>
                                </div>
                            </div>
                        </div>
                        <!-- 회사 방침 링크 -->
                        <div class="col-md-6">
                            <div class="footer-link">
                                <h2>Quick Links</h2>
                                <a href="">How to use</a>
                                <a href="">Privacy policy</a>
                                <a href="">Help</a>
                                <a href="">FQAs</a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 서포트 이메일 받는란 -->
                <div class="col-lg-5">
                    <div class="footer-newsletter">
                        <h2>Support us</h2>
                        <p>
                            If you are interested in this business, send your email to us.<br>
                            Thank you for supporting.
                        </p>
                    </div>
                    <div>
                        <form class="input-group mb-3">
                            <input type="text" class="form-control" placeholder="Email@email.com"
                                aria-label="Email@email.com aria-describedby=" button-addon2">
                            <button class="btn btn-secondary" type="submit" id="button-addon2">submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- 저작권 부분 -->
        <div class="container copyright">
            <div class="row">
                <div class="col-md-6">
                    <p>&copy; <a href="#">E-kuru</a>, All Right Reserved.</p>
                </div>
                <div class="col-md-6">
                    <p>Designed By <a href="https://htmlcodex.com">HTML Codex</a></p>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer End -->

</body>
</html>