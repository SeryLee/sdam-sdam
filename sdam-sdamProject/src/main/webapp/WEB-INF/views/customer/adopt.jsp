<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="root" value="${pageContext.request.contextPath }/"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>쓰담쓰담</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta content="" name="keywords" />
<meta content="" name="description" />

<!-- Bootstrap CDN -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>


<!-- Favicon -->
<link href="../img/favicon.ico" rel="icon" />

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500&family=Quicksand:wght@600;700&display=swap"
	rel="stylesheet" />

<!-- Icon Font Stylesheet -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet" />

<!-- Libraries Stylesheet -->
<link href="../lib/animate/animate.min.css" rel="stylesheet" />
<link href="../lib/lightbox/css/lightbox.min.css" rel="stylesheet" />
<link href="../lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet" />

<!-- Customized Bootstrap Stylesheet -->
<link href="../css/bootstrap.min.css" rel="stylesheet" />

<!-- Template Stylesheet -->
<link href="../css/style.css" rel="stylesheet" />
</head>
<body>
	<!-- Spinner Start -->
    <div
      id="spinner"
      class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center"
    >
      <div
        class="spinner-border text-primary"
        style="width: 3rem; height: 3rem"
        role="status"
      >
        <span class="sr-only">Loading...</span>
      </div>
    </div>
    <!-- Spinner End -->
	
	<!-- TOP MENU -->
	<c:import url="/WEB-INF/views/include/top_menu.jsp"></c:import>

    <!-- Page Header Start -->
    <div class="container-fluid header-bg py-5 mb-5 wow fadeIn" data-wow-delay="0.1s">
      <div class="container py-5">
        <h1 class="display-4 text-white mb-3 animated slideInDown">
          고객센터
        </h1>
        <nav aria-label="breadcrumb animated slideInDown">
			<ol class="breadcrumb mb-0">
				<li class="breadcrumb-item">
					<a class="text-white" href="${root }main">Home</a>
				</li>
				<li class="breadcrumb-item">
					<a class="text-white">고객센터</a>
				</li>
            <li class="breadcrumb-item text-primary active" aria-current="page" href="${root }customer/adopt">
            	입양문의
            </li>
			</ol>
		</nav>
      </div>
    </div>
    <!-- Page Header End -->




	<!-- content -->
  	<div class="container-xxl py-5">
		<div class="container">
			<!-- <h3 class="display-6 text-center mb-5 wow fadeInUp pb-5" data-wow-delay="0.1s">자주 묻는 질문 (FAQ)</h3> -->
			<div class="row g-5 mb-5 align-items-end wow fadeInUp"
				data-wow-delay="0.1s">
				<div class="col-lg-6">
					<h1 class="display-6 mb-0 pb-3">입양문의</h1>
					<p>
						<span class="text-primary me-2">#</span>쓰담쓰담 테라피독의 새 가족이 되어주세요!
					</p>
				</div>
			</div>
		</div>
	</div>


	<div class="container px-4 py-5" id="featured-3">
		<h2 class="pb-2 border-bottom">입양 절차</h2>
		<div class="row g-4 py-5 row-cols-1 row-cols-lg-3">
			<div class="feature col">
				<div></div>
				<div class="feature-icon bg-primary bg-gradient">
					<i class=""></i>
				</div>
				<h2>Featured title</h2>
				<p>Paragraph of text beneath the heading to explain the heading.
					We'll add onto it with another sentence and probably just keep
					going until we run out of words.</p>

			</div>
			<div class="feature col">
				<div></div>
				<div class="feature-icon bg-primary bg-gradient">
				</div>
				<h2>Featured title</h2>
				<p>Paragraph of text beneath the heading to explain the heading.
					We'll add onto it with another sentence and probably just keep
					going until we run out of words.</p>

			</div>
			<div class="feature col">
				<div></div>
				<div class="feature-icon bg-primary bg-gradient">
<!-- 					<svg class="bi" width="1em" height="1em"> -->
<!-- 						<use xlink:href="#toggles2" /></svg> -->
				</div>
				<h2>Featured title</h2>
				<p>Paragraph of text beneath the heading to explain the heading.
					We'll add onto it with another sentence and probably just keep
					going until we run out of words.</p>
			</div>
		</div>
	</div>






	<c:import url="/WEB-INF/views/include/bottom_info.jsp"></c:import>

    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"
      ><i class="bi bi-arrow-up"></i
    ></a>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/lightbox/js/lightbox.min.js"></script>

    <!-- Template Javascript -->
    <script src="../js/main.js"></script>
  </body>

</body>
</html>

