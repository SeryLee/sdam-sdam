<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="root" value="${pageContext.request.contextPath }/"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마음을 치료하는 테라피독</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta content="" name="keywords" />
<meta content="" name="description" />

<!-- Bootstrap CDN -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
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

<body>
<!-- Spinner Start -->
<div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
	<div class="spinner-border text-primary" style="width: 3rem; height: 3rem" role="status">
        <span class="sr-only">Loading...</span>
	</div>
</div>
<!-- Spinner End -->
	
<!-- TOP MENU -->
<c:import url="/WEB-INF/views/include/top_menu.jsp"></c:import>

<!-- Page Header Start -->
<div class="container-fluid header-bg py-5 mb-5 wow fadeIn" data-wow-delay="0.1s">
	<div class="container py-5">
		<h1 class="display-4 text-white mb-3 animated slideInDown">테라피독 등록</h1>
		<nav aria-label="breadcrumb animated slideInDown">
			<ol class="breadcrumb mb-0">
				<li class="breadcrumb-item">
					<a class="text-white" href="${root }main">Home</a>
				</li>
				<li class="breadcrumb-item text-white">
					테라피
				</li>
				<li class="breadcrumb-item text-white">
					<a class="text-white" href="${root}service/therapydog">테라피독</a>
				</li>
				<li class="breadcrumb-item text-primary active" aria-current="page">
					테라피독 등록
				</li>
			</ol>
		</nav>
	</div>
</div>
<!-- Page Header End -->

<!-- Start -->
<div class="container" style="margin-top:100px">
	<div class="row">
		<div class="col-sm-3"></div>
		<div class="col-sm-6">
			<div class="card shadow">
				<div class="card-body">
					<form:form action="${root }service/joindog" method="post" modelAttribute="dogBean">
						<div class="form-group">
							<form:label path="dog_name">이름</form:label>
							<form:input path="dog_name" class="form-control"/>
					<%--    <form:errors path="dog_name" style="color:red"/> --%>	
						</div>
						<div class="form-group">
							<form:label path="dog_type">견종</form:label>
							<form:input path="dog_type" class="form-control"/>
					<%--    <form:errors path="dog_name" style="color:red"/> --%>	
						</div>
						<div class="form-group">
							<form:label path="dog_age">나이</form:label>
							<form:input path="dog_age" class="form-control col-3"/>
					<%--    <form:errors path="dog_name" style="color:red"/> --%>	
						</div>
						<div class="form-group">
							<form:label path="dog_sex">성별</form:label><br>
							<form:radiobutton path="dog_sex" value="XX" class="col-1"/> 여아 &nbsp;
							<form:radiobutton path="dog_sex" value="XY" class="col-1"/> 남아
				<%--		<form:input path="dog_sex" class="form-control"/>
							<form:errors path="dog_name" style="color:red"/> --%>	
						</div>
						<div class="form-group">
							<form:label path="dog_neu">중성화</form:label><br>
							<form:radiobutton path="dog_neu" value="Y" class="col-1"/> 했어요 &nbsp;&nbsp;
							<form:radiobutton path="dog_neu" value="N" class="col-1"/> 안했어요
					<%--	<form:input path="dog_neu" class="form-control"/>		
							<form:errors path="dog_name" style="color:red"/> --%>	
						</div>
						<div class="form-group">
							<form:label path="dog_memo">소개</form:label>
							<form:textarea path="dog_memo" class="form-control"/>
					<%--		<form:input path="dog_memo" class="form-control"/>
					    <form:errors path="dog_name" style="color:red"/> --%>	
						</div>
						<div class="form-group">
							<form:label path="dog_pic">프로필사진</form:label>
							<form:input type="file" path="dog_pic" class="form-control" accept="image/*"/>
						</div>
						
						<div class="form-group">
							<div class="text-right">
								<form:button class="btn btn-primary">등록하기</form:button>
							</div>
						</div>
					</form:form>
				</div>
			</div>
		</div>
		<div class="col-sm-3"></div>
	</div>
</div>
<!-- End -->

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