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
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css"
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
          입양문의
        </h1>
        <nav aria-label="breadcrumb animated slideInDown">
			<ol class="breadcrumb mb-0">
				<li class="breadcrumb-item">
					<a class="text-white" href="${root }main">Home &nbsp;/</a>
				</li>
				<li class="breadcrumb-item">
					<a class="text-white">고객센터 &nbsp;/</a>
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

	<div class="container px-4 py-3" id="featured-3">

		<h2 class="pb-2 border-bottom"><i class="bi bi-check-lg"></i> 입양 절차</h2>
		<div class="row g-4 py-5 row-cols-1 row-cols-lg-3">
			<div class="feature col px-3">
				
				<div class="mb-5 text-center">
					<img src="../image/sdamsdam_adopt_001.jpg"/>
				</div>
				<div>
					<h3><span class="text-primary me-2 h1">1</span> 입양 신청서 작성</h3>
				</div>
				<p>서비스를 이용하며 만난 테라피독 중, 가족이 되고 싶은 테라피독을 선택하여 입양 신청서를 작성합니다.</p>

			</div>
			<div class="feature col px-3">
				<div class="mb-5 text-center">
					<img src="../image/sdamsdam_adopt_002.jpg"/>
				</div>
				<div>
					<h3><span class="text-primary me-2  h1">2</span> 기관 연락 기다리기</h3>
				</div>
				<p>신청서를 작성하면 해당 테라피독이 소속되어 있는 기관으로 연락이 갑니다. 신청 내역을 검토하여 테라피독 소속 기관에서 입양 승인 여부를 결정합니다.
				<br>(입양 승인 과정은 2~3일 정도 소요됩니다)</p>

			</div>
			<div class="feature col px-3">
				<div class="mb-5 text-center">
					<img src="../image/sdamsdam_adopt_003.jpg"/>
				</div>
				<div>
					<h3><span class="text-primary me-2 text-center h1">3</span> 기관 방문 및 입양절차 완료</h3>
				</div>
				<p>입양이 승인되면 날짜를 조율하여 테라피독이 있는 기관으로 직접 방문합니다. 간단한 검증 절차 후 내가 선택한 테라피독을 데리고 갈 수 있습니다.</p>
			</div>
		</div>
	</div>

<div class="container px-4 py-5 mt-4" id="featured-3">
	<h2 class="pb-2 border-bottom"><i class="bi bi-check-lg"></i> 입양 신청서 작성하기</h2>	

	
	<div class="container-xxl py-5">
		<div class="container">
			<div class="row g-5">
			
				<div class="col-lg-6 wow fadeInUp" data-wow-delay="0.5s">
					<div class="h-100" style="min-height: 400px">
						<img class="img-fluid" src="../img/be_the_family.jpg" alt="테라피독의 새로운 가족이 되어주세요" />
					</div>
				</div>
				
				<div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
					<div class="card shadow">
						<div class="card-body">

				<div class="container px-4 py-2 mt-4" id="featured-3">
					<div class="col-sm-6">
 						<div class="col-12">
			    			<label for="inputEmail4" class="form-label mb-1">이 름</label>
			   				 <input type="text" class="form-control mb-3">
			  			</div>
						<div class="col-12">
						    <label for="inputPassword4" class="form-label mb-1">전화번호</label>
						    <input type="text" class="form-control mb-3" placeholder="010-0000-0000">
					  	</div>
						<div class="col-12">
						    <label for="inputPassword" class="form-label mb-1">입양 희망 강아지</label>
						    <input type="text" class="form-control mb-3">
					  	</div>
					   	<div class="col-12">
						    <label for="inputAddress" class="form-label mb-1">이메일</label>
						    <input type="text" class="form-control mb-3" placeholder="">
					  	</div>
					  	<div class="col-12 mb-4">
						    <label for="inputAddress2" class="form-label  mb-1">방문날짜</label>
						    <input type="text" class="form-control mb-3" placeholder="">
					  	</div>
					   	<div class="col-12">
						    <button type="submit" class="btn btn-primary">제출하기</button>
					 	</div>
					 	
					 	
<%-- 			<form:form action="${root }customer/adoptdone" method="post" modelAttribute="customerBean"> --%>
<!-- 			<!--     enctype="multipart/form-data" --> -->
<%-- 						<form:hidden path="adopt_idx" /> --%>
<%-- 						<form:hidden path="userTelExist" /> --%>
<%-- 						<form:hidden path="user_info" value="user" /> --%>
<!-- 						<div class="form-group"> -->
<%-- 						path~~> customerBean의 변수 이름 확인해서 기입! --%>
<%-- 						<form:label path="adopt_idx">입양 idx</form:label> --%>
<%-- 							<form:input path="adopt_idx" class="form-control" /> --%>
<%-- 							<form:errors path="adopt_idx" style="color:red" /> --%>
<!-- 						</div> -->
<!-- 						<div class="form-group"> -->
<%-- 							<form:label path="user_idx">입양인 idx</form:label> --%>
<%-- 							<form:input path="user_idx" class="form-control" /> --%>
<%-- 							<form:errors path="user_idx" style="color:red" /> --%>
<!-- 						</div> -->
<!-- 						<div class="form-group"> -->
<%-- 							<form:label path="dog_idx">강아지 idx</form:label> --%>
<%-- 							<form:input path="dog_idx" class="form-control" /> --%>
<%-- 							<form:errors path="dog_idx" style="color:red" /> --%>
<!-- 						</div> -->
<!-- 						<div class="form-group"> -->
<%-- 							<form:label path="adopt_email">이메일</form:label> --%>
<%-- 							<form:input path="adopt_email" class="form-control" /> --%>
<!-- 						</div> -->
<!-- 						<div class="form-group"> -->
<%-- 							<form:label path="adopt_visitdate">방문 날짜</form:label> --%>
<%-- 							<form:input path="adopt_visitdate" class="form-control" /> --%>
<!-- 						</div> -->
<!-- 						<div class="form-group"> -->
<%-- 							<form:label path="adopt_tel">전화번호</form:label> --%>
<%-- 							<form:input path="adopt_tel" class="form-control" /> --%>
<%-- 							<form:errors path="adopt_tel" style="color:red" /> --%>
<!-- 						</div> -->
			
<!-- 						<div class="form-group"> -->
<!-- 							<div class="text-right py-4 text-end"> -->
<%-- 								<form:button class="btn btn-primary" style="width:30%">입양 신청하기</form:button> --%>
<!-- 							</div> -->
<!-- 						</div> -->
<%-- 					</form:form> --%>
					</div>
				</div>
			</div>
		</div>
</div>
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
    <script src="../lib/wow/wow.min.js"></script>
    <script src="../lib/easing/easing.min.js"></script>
    <script src="../lib/waypoints/waypoints.min.js"></script>
    <script src="../lib/counterup/counterup.min.js"></script>
    <script src="../lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="../lib/lightbox/js/lightbox.min.js"></script>

    <!-- Template Javascript -->
    <script src="../js/main.js"></script>
  </body>

</body>
</html>

