<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }/"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쓰담쓰담 소개</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta content="" name="keywords" />
<meta content="" name="description" />

<!-- Bootstrap CDN -->
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"> -->
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
      <h1 class="display-4 text-white mb-3 animated slideInDown">
          쓰담쓰담
      </h1>
      <nav aria-label="breadcrumb animated slideInDown">
         <ol class="breadcrumb mb-0">
            <li class="breadcrumb-item">
               <a class="text-white" href="${root }main">Home &nbsp;/</a>
            </li>            
            <li class="breadcrumb-item text-primary active" aria-current="page">
               서비스 소개
            </li>
         </ol>
      </nav>
   </div>
</div>
<!--서비스 소개 -->
<div class="container-xxl py-5 mb-5">
		<div class="container mb-3">
			<div class="row g-5">
				<div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
					
					<h1 class="display-5 mb-4">
						#<span class="text-primary"> 테라피독 / </span> <span class="text-primary">테라피스트</span>
						란?
					</h1>
					<p class="mb-3 fs-4 text fw-bold">테라피 독(Therapy Dog)</p><p>애니멀 테라피의 테라피(therapy)와 독(Dog)의 합성어로 동물 매개치료를 위해 <br> 훈련된 강아지를 말합니다.
					<br><br>
					<P class="mb-3 fs-4 text fw-bold">테라피스트(Therapist)</p><p>애니멀 테라피 서비스를 주도하는 훈련사로, 테라피독의 행동을 통제하고<br> 치매상병자와의 교감을 돕는 역할입니다.
					</p>
														
				</div>
				<div class="col-lg-6 wow fadeInUp" data-wow-delay="0.5s">
					<div class="img-border">
						<img class="img-fluid" src="${root}/image/dog1.jpg" alt="" />
					</div>
				</div>
			</div>
		</div>
	</div>
    
    <!-- 서비스 신청 설명 시작 -->
    <div class="container mb-5">
	   	 <div class="row g-5 mb-5 align-items-end wow fadeInUp" data-wow-delay="0.1s">
	    	<div class="col-lg-12">            
	            <h1 class="display-5 mb-0"># <span class="text-primary"> 서비스 신청</span>은 어떻게 하나요?</h1>         
	         </div>
	    </div>    
		<div class="row g-5">
				<div class="col-lg-12 wow fadeInUp ms-2" data-wow-delay="0.1s">					
					<p class="mb-3 fs-3 fw-bold"> 쉽고 간편하게 신청해요! <br>
					원하는 테라피스트와 테라피독을 선택하세요! <br> </p>
					<p>			
					
					<div class="col-lg-12 wow fadeInUp" data-wow-delay="0.5s">					
						<img class="w-100 h-75 ms-2" src="${root}/image/서비스신청절차.PNG" alt="" />						
					</div>
				</div>
			</div>
		</div>  
<!-- 입양 소개글 -->
		<div class="container">		
	 		  <div class="row mb-5 align-items-end" data-wow-delay="0.1s">
			      <h1 class="display-5 mb-5">#<span class="text-primary"> 입양해요!</span></h1> 
				<div class="row w-25 d-inline-block">	           
					<img src="${root}image/doptdog.PNG">	           
				</div>
		   		<div class="row w-60 m-auto d-inline-block">
		   			 <p class="fs-3 fw-bold">내가 만난 테라피독을 <span class="text-primary me-2">입양</span>하여 평생의 반려견으로..!! <br>
		            사지말고 <span class="text-primary me-2">입양</span>해요!!</p> <br>
		            <h5 class="mb-3">
						<i class="far fa-check-circle text-primary me-3"></i>전문 자격증을 갖춘 테라피스트에게 훈련받은 테라피 독!!
					</h5>
					<h5 class="mb-3">
						<i class="far fa-check-circle text-primary me-3"></i>입양 신청부터 마무리까지 쓰담쓰담과 함께!
					</h5>
					<h5 class="mb-3">
						<i class="far fa-check-circle text-primary me-3"></i>쓰담쓰담에서 입양 시 다양한 혜택이!!
					</h5> <br>
		            <p> 저희 쓰담쓰담은 매년증가하는 유기/유실견 수가 사회적 문제로 주목받는 만큼 
		     		작은 도움이 되고자 
		     		<br> 훈련된 테라피 독 입양절차를 진행하고 있습니다.
		     		<br> 가족을 기다리는 유기/유실견들에게 따뜻한 손길을
		     		보내주세요! 
		     		<br> 정확한 입양절차와 내용은 아래 입양문의 게시판을 이용해 주세요.
		     		</p>
			   	<div>
			        <a class="btn btn-primary py-3 px-5 mt-3" style="float:right" href="${root }customer/adopt">입양문의</a>
			    </div> 
		     		</div> 
		   		</div>
	   		</div>
	   		
	   		
	
<!-- Animal End -->

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
