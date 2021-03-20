<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="shortcut icon" href="../resources/img/HatchfulExport-All/ekuru_logo.ico">
    <link rel="stylesheet" href="../resources/css/main-footer.css">
    <link rel="stylesheet" href="../resources/css/request-main.css">
    <link rel="stylesheet" href="../resources/css/bootstrap-4.6.0-dist/css/bootstrap-grid.css">
    <link rel="stylesheet" href="../resources/css/bootstrap-4.6.0-dist/css/bootstrap-grid.min.css">
    <link rel="stylesheet" href="../resources/css/bootstrap-4.6.0-dist/css/bootstrap-reboot.css">
    <link rel="stylesheet" href="../resources/css/bootstrap-4.6.0-dist/css/bootstrap-reboot.min.css">
    <link rel="stylesheet" href="../resources/css/bootstrap-4.6.0-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../resources/css/bootstrap-4.6.0-dist/css/bootstrap.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="../resources/css/header_Origin.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <title>E-kuru</title>

    <script>
        var myCarousel = document.querySelector('#myCarousel1')
        var carousel = new bootstrap.Carousel(myCarousel, {
            interval: 2000,
            wrap: false
        })

        var myCarousel2 = document.querySelector('#myCarousel2')
        var carousel2 = new bootstrap.Carousel(myCarousel2, {
            interval: 2000,
            wrap: false
        })

        function openReadForm(reqNum){
			alert("Please join with us");
			location.href="/user/joinForm";
		}

		function openCategory(){
			alert("Please join with us");
			location.href="/user/joinForm"
		}
    </script>
</head>
<body>
    <!-- header -->
    <header class="header---">
        <div class="wrapper">
            <a href="/">
                <img src="../resources/img/HatchfulExport-All/ekuru_logo.png" style="width: 4%; position: absolute;">
            </a>
        </div>
    </header>
    <!-- header -->

    <div>
        <!-- 검색창 -->
        <div class="container">
            <div>
                <div id="custom-search-input" style="width: 80%; margin-left: 10%;">
                    <div class="input-group">
                    <form action="#" method="post">
                    	<div class="row">
		                   	 <div class="col-sm">
		                        <input type="text" class="search-query form-control" name="search" placeholder="Search after join with us" style="width:190%;"  readonly="readonly"/>
		                   	 </div>
	                       	<div class="col-sm input-group-btn">
	                          <button class="btn btn-danger" type="submit" style="margin-left:90%">
	                              <span class="glyphicon glyphicon-search"></span>
	                          </button>
	                       </div>
                    	</div>
                    </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- 카테고리 구분 -->
       <section>
            <div class="category-button" style="height: auto; background:#FFDFB9;">
	            <button type="button" class="btn btn-outline-danger" style="margin-right: 50px;" onclick="openCategory();">Fashion/Acc</button>
	            <button type="button" class="btn btn-outline-warning" style="margin-right: 50px;" onclick="openCategory();">Beauty</button>
				<button type="button" class="btn btn-outline-success" style="margin-right: 50px;" onclick="openCategory();">Food</button>
				<button type="button" class="btn btn-outline-primary" style="margin-right: 50px;" onclick="openCategory();">Book/CD</button>
	 			<button type="button" class="btn btn-outline-secondary" style="margin-right: 50px;" onclick="openCategory();">Ect</button>
            </div>
        </section>
        
        <!-- 요청 게시글 출력 부분 시작-->
        <section class="page-section portfolio" id="portfolio">
            <div class="container">
                <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0"
                    style="margin-top: 5%;">
                    Search Result
                </h2>
                <!-- 요청 게시글 배열 나누기-->
                <div class="divider-custom">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
                <!-- 인기 채널 리스트 -->
                <div style="margin-bottom: 10%; margin-top: 5%;">
                
                    <h3 class="text-center text-uppercase" id="popularRequest">Popular Channel</h3>
                    <div id="myCarousel" class="carousel slide justify-content-center"
						data-ride="carousel" style="width: 100%;">
						<!-- Wrapper for slides -->
						<div class="carousel-inner">
							<div class="item active inner">
								<div class="row justify-content-center inner">
									<c:forEach items="${adReqList }" var="adReqList">
											<div class="col-md-6 col-lg-4 mb-5 mb-lg-0">
												<div class="portfolio-item mx-auto" data-toggle="modal"
													data-target="#portfolioModal4">
													<div
														class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100"
														onclick="openReadForm('${adReqList.REQNUM}');">
														<div
															class="portfolio-item-caption-content text-center text-white">
															<i class="fas fa-plus fa-3x"></i>
														</div>
													</div>
													<img id="imgsize" class="img-fluid" src="../resources/upload/file/${adReqList.REQORIGINALPIC1 }" alt="" />
												</div>
												<div class="card-body">
													<h5 class="card-title">${adReqList.REQTITLE }</h5>
													<p class="card-text">${adReqList.REQCONTENT }</p>
												</div>
											</div>
									</c:forEach>

								</div>
							</div>
						</div>
                        <!-- Left and right controls -->
                        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="right carousel-control" href="#myCarousel" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
                </div>
		</section>
		
        <section class="page-section portfolio" id="portfolio">
            <div class="container">
                <!-- 요청 게시글 배열 나누기-->
                <div class="divider-custom">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
                <!-- 게시글 리스트 -->
                <!-- 인기 게시글 -->
                <!-- 인기 게시글 -->
                <div style="margin-bottom: 10%; margin-top: 5%;">
                
                    <h3 class="text-center text-uppercase" id="popularRequest">Popular Request</h3>
                    <div id="myCarousel" class="carousel slide justify-content-center"
						data-ride="carousel" style="width: 100%;">
						<!-- Wrapper for slides -->
						<div class="carousel-inner">
							<div class="item active inner">
								<div class="row justify-content-center inner">
									<c:forEach items="${adReqList }" var="adReqList">
											<div class="col-md-6 col-lg-4 mb-5 mb-lg-0">
												<div class="portfolio-item mx-auto" data-toggle="modal"
													data-target="#portfolioModal4">
													<div
														class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100"
														onclick="openReadForm('${adReqList.REQNUM}');">
														<div
															class="portfolio-item-caption-content text-center text-white">
															<i class="fas fa-plus fa-3x"></i>
														</div>
													</div>
													<img id="imgsize" class="img-fluid" src="../resources/upload/file/${adReqList.REQORIGINALPIC1 }" alt="" />
												</div>
												<div class="card-body">
													<h5 class="card-title">${adReqList.REQTITLE }</h5>
													<p class="card-text">${adReqList.REQCONTENT }</p>
												</div>
											</div>
									</c:forEach>

								</div>
							</div>
						</div>
                        <!-- Left and right controls -->
                        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="right carousel-control" href="#myCarousel" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
				<!-- 채널 검색 결과 -->
                <div class="container text-center title">
                    <h2>This is the result of your search for '${search}' from Channel</h2>
        			
                    <div class="search-list">
                        <div class="search-result">
                        <c:forEach items="${prodList }" var="prodList">
                            <div class="search-form">
                                <div class="col-md-3 search-card" onclick="openCategory();">
                                    <img class="search-img" src="../resources/upload/file/${prodList.prodOriginalPic1 }" alt="">
                                </div>
                                <div class="col-md-9 search-card">
                                    <div class="card-body cdby">
                                        <h5 class="card-title">${prodList.prodTitle }</h5>
                                        <p class="card-text">
                                            ${prodList.prodContent }
                                        </p>
                                        <p class="card-text"><small class="text-muted">${prodList.prodIndate }</small></p>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>

                        </div>
                    </div>
                </div>
                <hr class="line">
                <!-- 요청글에서 찾아온 글 -->
                <div class="container text-center title">
                    <h2>This is the result of your search for '${search}' from Request</h2>
        			
                    <div class="search-list">
                        <div class="search-result">
                        <c:forEach items="${reqList }" var="reqList">
                            <div class="search-form">
                                <div class="col-md-3 search-card" onclick="openCategory();">
                                    <img class="search-img" src="../resources/upload/file/${reqList.reqOriginalPic1}" alt="">
                                </div>
                                <div class="col-md-9 search-card">
                                    <div class="card-body cdby">
                                        <h5 class="card-title">${reqList.reqTitle }</h5>
                                        <p class="card-text">
                                            ${reqList.reqContent }
                                        </p>
                                        <p class="card-text"><small class="text-muted">${reqList.reqIndate }</small></p>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>

                        </div>
                    </div>
                </div>
                
              </div>
        </section>

    </div>
    <!-- 이미지, 제목, 상세설명-->
    

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
                        <button class="btn btn-secondary submit-btn" type="submit" id="button-addon2">SUBMIT</button>
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