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
<!-- <link rel="stylesheet" -->
<!-- 	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"> -->
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
		<h1 class="display-4 text-white mb-3 animated slideInDown">테라피스트 소개</h1>
		<nav aria-label="breadcrumb animated slideInDown">
			<ol class="breadcrumb mb-0">
				<li class="breadcrumb-item">
					<a class="text-white" href="${root }main">Home &nbsp;/</a>
				</li>
				<li class="breadcrumb-item text-white">
					테라피 &nbsp;/
				</li>
				<li class="breadcrumb-item text-white">
					<a class="text-white" href="${root}service/therapist">테라피스트 &nbsp;/</a>
				</li>
				<li class="breadcrumb-item text-primary active" aria-current="page">
					테라피스트 소개
				</li>
			</ol>
		</nav>
	</div>
</div>
<!-- Page Header End -->

<!-- Membership Start -->
         		 
    <div class="container-xxl py-5">
      <div class="container">
        <div  class="row g-5 mb-5 align-items-end wow fadeInUp"
          data-wow-delay="0.1s">      
          <div class="col-12">  
            <h1 class="display-5 mb-0">
              사랑과 정성으로 <br> 보살피는 
              <span class="text-primary">테라피스트</span>를 소개합니다.
            </h1>
          </div>    
        </div>
       <div class="row g-4">
          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
            <div class="membership-item position-relative" style="height:100%">
              <img class="img-fluid" style="height:100%" src="${root }upload/${therapist.therapist_picture}" alt="" />           
            </div>
          </div>
          
          <div class="col-lg-8 col-md-6 wow fadeInUp"  style="" data-wow-delay="0.3s">
            <div class=" position-relative" style="margin-left:10%">            
              <h1 class="display-5 mb-3"><span class="text-primary">${therapist.user_name} </span>테라피스트    4.5/5</h1>
              <h4 class="text-black mb-3">주요지역 : ${therapist.company_local}</h4>
              <h4 class="mb-4">경력 : ${therapist.therapist_level}년 </h4>
              <div class="row">
              <div class="col-md-5">
	              <p class="text-dark"><i class="fa fa-check text-primary me-3">
	                 </i>現 쓰담보호소 원장
	              </p>              
	              <p class="text-dark">
	                <i class="fa fa-check text-primary me-3"></i>現 쓰담쓰담 테라피스트 
	              </p>
	              <p class="text-dark"><i class="fa fa-check text-primary me-3">
	               </i>tv 동물농장 652회 출연
	              </p>              
	              <p class="text-dark"><i class="fa fa-check text-primary me-3">
	               </i>씨담씨담 위원회 부장
	              </p>
	              <p class="text-dark"><i class="fa fa-check text-primary me-3">
	               </i>씨담씨담 위원회 부장
	              </p>
	          </div>  
	          <div class="col-md-7">
	              <p class="text-dark"><i class="fa fa-check text-primary me-3">
	               </i>씨담씨담 위원회 부장
	              </p> 
	              <p class="text-dark"><i class="fa fa-check text-primary me-3">
	               </i>씨담씨담 위원회 부장
	              </p> 
	              <p class="text-dark"><i class="fa fa-check text-primary me-3">
	               </i>씨담씨담 위원회 부장
	              </p> 
	              <p class="text-dark"><i class="fa fa-check text-primary me-3">
	               </i>씨담씨담 위원회 부장
	              </p> 
	              <p class="text-dark"><i class="fa fa-check text-primary me-3">
	               </i>씨담씨담 위원회 부장
	              </p> 
	           </div>  
	           </div>          
             <!--  <a class="btn btn-primary py-3 px-5 mt-3" href="">신청하기</a> -->
            </div>
          </div>
        </div>
      </div>
    </div>
    
 <div class="container px-4 py-5" id="hanging-icons">
   <h2 class="pb-2 border-bottom"><i class="bi bi-check-lg"></i>이용후기</h2>
    <div class="row g-4 py-5 row-cols-1 row-cols-lg-3">
      <div class="col d-flex align-items-start">        
        <div class="px-3">
          <p class="fs-4 text fw-bold">강아지 짱 좋아	
           <span style="float:right">★★★★☆</span>        		
          <p>처음 이용하는 서비스라 걱정이 많았는데 자주 질문해서 귀찮으실 법도 한데 너무 친절하고 좋아요! 다음에도 또 이용할게요.</p>
        </div>
      </div>
      <div class="col d-flex align-items-start">
        <div class="px-3">
             <p class="fs-4 text fw-bold">너와 나의 연결고리
            <span style="float:right">★★★★☆</span>  
          <p>중간중간 연락도 주셔서 마음놓고 서비스를 이용할 수 있었어요! 테라피스트님이 친절하셔서 마음에 드네요! 다른 분들께 추천해요! </p>
        </div>
      </div>
      <div class="col d-flex align-items-start">        
        <div class="px-3">
         <p class="fs-4 text fw-bold">가양동 전자두뇌
          <span style="float:right">★★★★★</span>  
          <p>꼼꼼한 케어가 너무 마음에 듭니다. 다음에는 팻캠도 추가해서 서비스를 이요해보고 싶어요! 다른분들께 김혜진 테라피스트님을 추천드립니다!</p>
        </div>
      </div>
    </div>
  </div>
    
    <!-- Membership End -->

<c:import url="/WEB-INF/views/include/bottom_info.jsp"></c:import>

<!-- Back to Top -->
<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>

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
</html>
