<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="root" value="${pageContext.request.contextPath }/"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 게시물관리</title>
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
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css" rel="stylesheet" />

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

<!-- Start -->
<%-- <div class="container">
	<div class="row g-5 mb-5 align-items-end wow fadeInUp" data-wow-delay="0.1s">
		<div class="col-lg-6" >
			<p><span class="text-primary me-2">#</span>마이페이지(My Page)</p>
			<h1 class="display-6 mb-0">우리는 쓰담쓰담의 <span class="text-primary">테라피독</span>입니다</h1>
		</div>
		<div class="col-lg-6 text-lg-end">
			<a class="btn btn-primary py-3 px-5" href="${root}service/adddog">테라피독 등록하기</a>
		</div>
	</div>
</div> --%>

<div class="container-fluid header-bg py-5 mb-5 wow fadeIn" data-wow-delay="0.1s">
	<div class="container py-5">
		<h1 class="display-4 text-white mb-3 animated slideInDown">
          예약관리
		</h1>
		<nav aria-label="breadcrumb animated slideInDown">
			<ol class="breadcrumb mb-0">
				<li class="breadcrumb-item">
					<a class="text-white" href="${root }main">Home &nbsp;/ </a>
				</li>
				<li class="breadcrumb-item text-white">마이페이지 &nbsp;/ </li>
				<li class="breadcrumb-item text-primary active" aria-current="page">
					예약관리
				</li>
			</ol>
		</nav>
	</div>
</div>
<!-- Page Header End -->

<!-- Start -->
<div class="container-xxl py-5" style="display:flex;">
<!--<div class="container"> -->
	<div class="col-lg-3">
		
		<nav class="navbar navbar-expand-lg navbar-light">
			<div class="collapse navbar-collapse" >
				<div class="navbar-nav">
					<div class="nav-item dropdown">
						<a class="nav-item nav-link" href="${root }user/modify" style="padding:0 0 10px 0;">회원정보</a>
						<a class="nav-item nav-link" href="${root }user/my_service" aria-current="page" style="padding:10px 0;"><span class="text-primary me-2">#</span>예약관리</a>
						<a class="nav-item nav-link" href="${root }user/my_board" style="padding:10px 0;"> 게시물관리</a>
						<a class="nav-item nav-link" href="${root }user/my_delete" style="padding:10px 0;">회원탈퇴</a>
					</div>
				</div>
			</div>
		</nav>
		
	</div>
	
	<div class="col-lg-9 ">  
<!--<div class="owl-carousel testimonial-carousel wow fadeInUp text-center" data-wow-delay="0.1s"> -->
		<div class="testimonial-item bg-white card shadow py-4">
			<div class="mt-4 mb-1 ms-5">
				<img class="img-fluid rounded-circle border border-2 p-2 mx-auto mb-3" src="../image/testimonial-1.jpg" style="width: 100px; height: 100px; display:inline-block;"/> &nbsp;&nbsp;
				<h4 class="display-7" data-wow-delay="0.1s" style="display:inline-block;"> <c:out value="${loginUserBean.user_name}" />님 안녕하세요.</h4>
			</div>
        </div>
        
        <div class="testimonial-text rounded mt-5">	
			<b><img alt="서비스이용아이콘" src="../image/myservice_ing.png" width="3.5%"> 서비스이용 2회 &nbsp; / &nbsp; <img alt="서비스대기아이콘" src="../image/myservice_check.png" width="3.5%"> 서비스대기중 1회 &nbsp; / &nbsp; <img alt="서비스취소아이콘" src="../image/myservice_x.png" width="3.5%"> 취소 1회</b><hr/>	
			
			<ul style="list-style: none;">
 				<li class="pb-4">
					<div style="margin-bottom:-0.5em;"><img alt="서비스이용아이콘" src="../image/myservice_ing.png"> &nbsp; <b>서비스이용완료</b> &nbsp; 22.09.17 토 / 13:00 ~ 15:00 (2시간)</div>
					<div class="link-secondary"> &nbsp;&nbsp;&nbsp;&nbsp; | </div>
					<div style="width:95%; display:flex;">
						<div class="col-2"><img class="img-fluid" style="border-top-left-radius:10px; border-bottom-left-radius:10px;" alt="테라피독" src="../image/therapydog1.jpg"></div>
						<div class="col-10 px-4" style="border:1px solid #999; border-top-right-radius:10px; border-bottom-right-radius:10px;">
							<div class="py-2">임댕댕 
								<button type="button" class="btn btn-outline-warning btn-sm float-end">다시예약하기</button>
								<button type="button" class="btn btn-outline-danger btn-sm float-end mx-2">이용후기작성</button>
							<hr/></div>
							<div class="py-2">김효선 테라피스트. 의정부</div>
							<div class="py-2">방문장소: 대전시 동구 우암로, 나래관 4층</div>
						</div>
					</div>
				</li>
				
				<li class="pb-4">
					<div style="margin-bottom:-0.5em;"><img alt="서비스대기아이콘" src="../image/myservice_check.png"> &nbsp; <b>승인 대기중</b> &nbsp; 22.09.26 월 / 13:00 ~ 15:00 (2시간)</div>
					<div class="link-secondary"> &nbsp;&nbsp;&nbsp;&nbsp; | </div>
					<div style="width:95%; display:flex;">
						<div class="col-2"><img class="img-fluid" style="border-top-left-radius:10px; border-bottom-left-radius:10px;" alt="테라피독" src="../image/therapydog1.jpg"></div>
						<div class="col-10 px-4" style="border:1px solid #999; border-top-right-radius:10px; border-bottom-right-radius:10px;">
							<div class="py-2">임댕댕 
								<button type="button" class="btn btn-outline-warning btn-sm float-end">다시예약하기</button>
								<button type="button" class="btn btn-outline-secondary btn-sm float-end mx-2">예약취소하기</button> 
							<hr/></div>
							<div class="py-2">이세령 테라피스트. 대전</div>
							<div class="py-2">방문장소: 대전시 동구 우암로 352-21, 나래관 4층</div>
						</div>
					</div>
				</li>
				
				<li class="pb-4">
					<div style="margin-bottom:-0.5em;"><img alt="서비스취소아이콘" src="../image/myservice_x.png"> &nbsp; <b>서비스취소완료</b> &nbsp; 22.10.16 일 / 13:00 ~ 15:00 (2시간)</div>
					<div class="link-secondary"> &nbsp;&nbsp;&nbsp;&nbsp; | </div>
					<div style="width:95%; display:flex;">
						<div class="col-2"><img class="img-fluid" style="border-top-left-radius:10px; border-bottom-left-radius:10px;" alt="테라피독" src="../image/therapydog1.jpg"></div>
						<div class="col-10 px-4" style="border:1px solid #999; border-top-right-radius:10px; border-bottom-right-radius:10px;">
							<div class="py-2">예약취소완료
								<button type="button" class="btn btn-outline-warning btn-sm float-end">다시예약하기</button>
							<hr/></div>
							<div class="py-2">김혜진 테라피스트. 서울</div>
							<div class="py-2">방문장소: 대전시 동구 우암로, 나래관 4층</div>
						</div>
					</div>
				</li>
			</ul>			
		</div>
        
        <div class="col-sm-3"></div>
<!--</div> -->
	</div>
<!--</div> -->
</div>
<!-- End -->

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

</body>
</html>
