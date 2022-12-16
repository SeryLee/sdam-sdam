<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="root" value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>애니멀테라피 쓰담쓰담</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta content="" name="keywords" />
<meta content="" name="description" />

	<!-- Bootstrap CDN -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>

	<!-- Favicon -->
	<link href="../img/favicon.ico" rel="icon" />

	<!-- Google Web Fonts -->
	<link rel="preconnect" href="https://fonts.googleapis.com" />
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
	<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500&family=Quicksand:wght@600;700&display=swap" rel="stylesheet" />

	<!-- Icon Font Stylesheet -->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet" />
	<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />

	<!-- Libraries Stylesheet -->
	<link href="../lib/animate/animate.min.css" rel="stylesheet" />
	<link href="../lib/lightbox/css/lightbox.min.css" rel="stylesheet" />
	<link href="../lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" />

	<!-- Customized Bootstrap Stylesheet -->
	<link href="../css/bootstrap.min.css" rel="stylesheet" />

	<!-- Template Stylesheet -->
	<link href="../css/style.css" rel="stylesheet" />

</head>

<body class="bg-light">

<!-- Spinner Start -->
<div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
	<div class="spinner-border text-primary" style="width: 3rem; height: 3rem" role="status">
		<span class="sr-only">Loading...</span>
	</div>
</div>
<!-- Spinner End -->

<!-- TOP MENU -->
<c:import url="/WEB-INF/views/include/top_menu.jsp"></c:import>

	<!-- Header Start -->
	<div class="container-fluid bg-dark p-0 mb-5">
		<div class="row g-0 flex-column-reverse flex-lg-row">
			<div class="col-lg-6 p-0 wow fadeIn" data-wow-delay="0.1s">
				<div
					class="header-bg h-100 d-flex flex-column justify-content-center p-5">
					<h1 class="display-4 text-light mb-5">내 주변 테라피독과 만나기</h1>
					<div class="d-flex align-items-center pt-4 animated slideInDown">
						<div class="position-relative" style="max-width: 285px; margin-bottom: 10px">
									<!-- <input class="form-control border-0 w-100 py-3 ps-4 pe-5"
										type="text" placeholder="원하는 지역을 검색하세요" /> -->
							<div class="d-sm-inline-block">
								<select id="sel-local" class="form-select form-select-lg mb-3" aria-label=".form-select-lg example">
								  <option selected>원하는 지역을 선택하세요</option>
									<option value="서울">서울</option>
									<option value="부산">부산</option>
									<option value="대구">대구</option>
									<option value="인천">인천</option>
									<option value="광주">광주</option>
									<option value="대전">대전</option>
									<option value="울산">울산</option>
									<option value="세종">세종</option>
									<option value="경기도">경기도</option>
									<option value="강원도">강원도</option>
									<option value="충청도">충청도</option>
									<option value="전라도">전라도</option>
									<option value="경상도">경상도</option>
									<option value="제주도">제주도</option>
								</select>
							</div>
							<div class=" d-sm-inline-block" style="float:right">
								<%-- <a href="${root }book/book?company_local=${company.company_local}"></a> --%>
								<button type="button" id="btn-search-local" class="btn btn-primary py-2 position-absolute h-75 top-0 mt-0 me-2 ">
								<i class="bi bi-search"></i></button>
							</div>
							<script>
								$(document).ready(function(){
									$("#btn-search-local").click(function(){
										var local = $("#sel-local").val();
										location.href = "${root }book/book?company_local=" + local;
									});
								});
							</script>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s" style="padding:0px">
				<div class="owl-carousel header-carousel">
					<div class="owl-carousel-item">
						<img class="img-fluid" src="img/carousel-1.jpg" alt="" />
					</div>
					<div class="owl-carousel-item">
						<img class="img-fluid" src="img/carousel-2.jpg" alt="" />
					</div>
					<div class="owl-carousel-item">
						<img class="img-fluid" src="img/carousel-3.jpg" alt="" />
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Header End -->

	<!-- About Start -->
	<div class="container-xxl py-5">
		<div class="container">
			<div class="row g-5">
				<div class="col-lg-6 wow fadeInUp pe-3" data-wow-delay="0.1s">
					<p>
						<span class="text-primary me-2">#</span>왜 쓰담쓰담인가요?
					</p>
					<h1 class="display-5 mb-4">
						Why<span class="text-primary"> 쓰담쓰담</span>
						?
					</h1>
					<p class="mb-3">"애니멀 테라피"란 환자가 직접 동물을 만지거나 안아보면서 상호
					교감을 통해 사람의 정신적, 육체적 고통을 경감시키는 방법입니다.<br>
					동물과의 놀이는 어르신들의 심장질환이나 고혈압 등에 효과가 있을 뿐만 아니라,
					치매예방에도 상당한 효과가 있는 것으로 입증됐습니다. 또한 우울증이 있거나, 주의력이
					떨어지는 사람들에게도 효과가 있는 것으로 확인됩니다.</p>
					<h5 class="mb-3">
						<i class="far fa-check-circle text-primary me-3"></i>우울증 감소
					</h5>
					<h5 class="mb-3">
						<i class="far fa-check-circle text-primary me-3"></i>감정에 관한 의사소통 향상
					</h5>
					<h5 class="mb-3">
						<i class="far fa-check-circle text-primary me-3"></i>섬세한 운동 능력 향상
					</h5>
					<h5 class="mb-3">
						<i class="far fa-check-circle text-primary me-3"></i>작업의 집중력 향상
					</h5>
					<a class="btn btn-primary py-3 px-5 mt-3" href="${root }introduce/intro">서비스 소개</a>
				</div>
				<div class="col-lg-6 wow fadeInUp ps-3" data-wow-delay="0.5s">
					<div class="img-border">
						<img class="img-fluid" src="img/about.jpg" alt="" />
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- About End -->

	<!-- Facts Start -->
	<div class="container-xxl bg-primary facts my-5 py-5 wow fadeInUp"
		data-wow-delay="0.1s">
		<div class="container py-5">
			<div class="row g-4">
				<div class="col-md-6 col-lg-3 text-center wow fadeIn"
					data-wow-delay="0.1s">
					<i class="fa fa-paw fa-3x text-primary mb-3"></i>
					<h1 class="text-white mb-2" data-toggle="counter-up">128717</h1>
					<p class="text-white mb-0">2021년 유기견 수</p>
				</div>
				<div class="col-md-6 col-lg-3 text-center wow fadeIn"
					data-wow-delay="0.3s">
					<i class="fa fa-users fa-3x text-primary mb-3"></i>
					<h1 class="text-white mb-2" data-toggle="counter-up">886173</h1>
					<p class="text-white mb-0">2021년 치매상병자 수</p>
				</div>
				<div class="col-md-6 col-lg-3 text-center wow fadeIn"
					data-wow-delay="0.5s">
					<i class="fa fa-certificate fa-3x text-primary mb-3"></i>
					<h1 class="text-white mb-2" data-toggle="counter-up">123</h1>
					<p class="text-white mb-0">대기 중인 테라피스트</p>
				</div>
				<div class="col-md-6 col-lg-3 text-center wow fadeIn"
					data-wow-delay="0.7s">
					<i class="fa fa-shield-alt fa-3x text-primary mb-3"></i>
					<h1 class="text-white mb-2" data-toggle="counter-up">1004</h1>
					<p class="text-white mb-0">대기 중인 테라피독</p>
				</div>
			</div>
		</div>
	</div>
	<!-- Facts End -->

	<!-- Animal Start -->
	<div class="container-xxl py-5">
		<div class="container">
			<div class="row g-5 mb-5 align-items-end wow fadeInUp"
				data-wow-delay="0.1s">
				<div class="col-lg-6">
					<p>
						<span class="text-primary me-2">#</span>쓰담쓰담의 테라피독
					</p>
					<h1 class="display-5 mb-0">우리는 <span class="text-primary">테라피독</span>입니다</h1>
				</div>
				<div class="col-lg-6 text-lg-end">
					<a class="btn btn-primary py-3 px-5" href="service/therapydog">테라피독 더보기</a>
				</div>
			</div>
			<div class="row g-4">
				<div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
					<div class="row g-4">
						<div class="col-12 pe-3 pb-4">
							<a class="animal-item" href="img/animal-md-1.jpg"
								data-lightbox="animal">
								<div class="position-relative">
									<img class="img-fluid" src="img/animal-md-1.jpg" alt="" />
									<div class="animal-text p-4">
										<p class="text-white small text-uppercase mb-0">#광주 #중형견 #활발한 #사교적인</p>
										<h5 class="text-white mb-0">바둑이 >></h5>
									</div>
								</div>
							</a>
						</div>
						<div class="col-12 pe-3">
							<a class="animal-item" href="img/animal-lg-1.jpg"
								data-lightbox="animal">
								<div class="position-relative">
									<img class="img-fluid" src="img/animal-lg-1.jpg" alt="" />
									<div class="animal-text p-4">
										<p class="text-white small text-uppercase mb-0">#세종 #소형견 #조용한 #애교많은</p>
										<h5 class="text-white mb-0">아리 >></h5>
									</div>
								</div>
							</a>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
					<div class="row g-4">
						<div class="col-12 px-2 pb-4">
							<a class="animal-item" href="img/animal-lg-2.jpg"
								data-lightbox="animal">
								<div class="position-relative">
									<img class="img-fluid" src="img/animal-lg-2.jpg" alt="" />
									<div class="animal-text p-4">
										<p class="text-white small text-uppercase mb-0">#광주 #대형견 #조용한 #애교많은</p>
										<h5 class="text-white mb-0">봄이 >></h5>
									</div>
								</div>
							</a>
						</div>
						<div class="col-12 px-2">
							<a class="animal-item" href="img/animal-md-2.jpg"
								data-lightbox="animal">
								<div class="position-relative">
									<img class="img-fluid" src="img/animal-md-2.jpg" alt="" />
									<div class="animal-text p-4">
										<p class="text-white small text-uppercase mb-0">#세종 #중형견 #애교많은 #사교적인</p>
										<h5 class="text-white mb-0">초롱이 >></h5>
									</div>
								</div>
							</a>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
					<div class="row g-4">
						<div class="col-12 ps-3 pb-4">
							<a class="animal-item" href="img/animal-md-3.jpg"
								data-lightbox="animal">
								<div class="position-relative">
									<img class="img-fluid" src="img/animal-md-3.jpg" alt="" />
									<div class="animal-text p-4">
										<p class="text-white small text-uppercase mb-0">#대전 #대형견 #애교많은</p>
										<h5 class="text-white mb-0">용식 >></h5>
									</div>
								</div>
							</a>
						</div>
						<div class="col-12 ps-3">
							<a class="animal-item" href="img/animal-lg-3.jpg"
								data-lightbox="animal">
								<div class="position-relative">
									<img class="img-fluid" src="img/animal-lg-3.jpg" alt="" />
									<div class="animal-text p-4">
										<p class="text-white small text-uppercase mb-0">#서울 #중형견 #애교많은 #장난기많은</p>
										<h5 class="text-white mb-0">사랑이 >></h5>
									</div>
								</div>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Animal End -->

<!-- BOTTOM MENU -->
<c:import url="/WEB-INF/views/include/bottom_info.jsp"></c:import>

<!-- Back to Top -->
<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>

<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="../lib/wow/wow.min.js"></script>
<script src="../lib/easing/easing.min.js"></script>
<script src="../lib/waypoints/waypoints.min.js"></script>
<script src="../lib/counterup/counterup.min.js"></script>
<script src="../lib/owlcarousel/owl.carousel.min.js"></script>
<script src="../lib/lightbox/js/lightbox.min.js"></script>

<!-- Template Javascript -->
<script src="../js/main.js"></script>


<script type="text/javascript">

</script>


</body>
</html>