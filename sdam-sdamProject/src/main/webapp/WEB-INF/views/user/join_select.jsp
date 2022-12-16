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
    <div
      class="container-fluid header-bg py-5 mb-5 wow fadeIn"
      data-wow-delay="0.1s"
    >
      <div class="container py-5">
        <h1 class="display-4 text-white mb-3 animated slideInDown">
          회원가입
        </h1>
        <nav aria-label="breadcrumb animated slideInDown">
          <ol class="breadcrumb mb-0">
			<li class="breadcrumb-item text-white"><a class="text-white" href="${root }main">Home</a> &nbsp;/</li>
            <li class="breadcrumb-item text-primary active" aria-current="page">회원가입</li>
          </ol>
        </nav>
      </div>
    </div>
    <!-- Page Header End -->

    <!-- Join Select Start -->
    <div class="container-xxl py-5">
      <div class="container">
      	<h3
          class="display-6 text-center mb-5 wow fadeInUp"
          data-wow-delay="0.1s"
        >
          어떻게 오셨나요?
        </h3>
        <div class="row g-4 mb-5">
        
          <div class="col-lg-4 wow fadeInUp pe-2" data-wow-delay="0.1s" style="cursor: pointer" onclick="location.href='${root }user/join_user';">
            <div class="h-100 bg-light d-flex align-items-center p-5">
              <div class="btn-lg-square bg-white flex-shrink-0">
                <i class="fa fa-user-circle text-primary"></i>
              </div>
              <div class="ms-4">
              	<h5 class="mb-2"><span class="text-primary me-2">♥</span>개인회원</h5>
                <p class="mb-2">
                  테라피 서비스를 이용하고자 하는 고객과 보호자는 별도의 인증 없이 가입할 수 있습니다
                </p>
              </div>
            </div>
          </div>
        
          <div class="col-lg-4 wow fadeInUp ps-3" data-wow-delay="0.3s" style="cursor: pointer" onclick="location.href='${root }user/join_therapist';">
            <div class="h-100 bg-light d-flex align-items-center p-5">
              <div class="btn-lg-square bg-white flex-shrink-0">
                <i class="fa fa-handshake text-primary"></i>
              </div>
              <div class="ms-4">
              	<h5 class="mb-2"><span class="text-primary me-2">♥</span>테라피스트</h5>
                <p class="mb-2">
                  기업에 소속되어 있거나 개인 활동을 하는 테라피스트는 자격증 인증을 통해 가입할 수 있습니다
                </p>
              </div>
            </div>
          </div>

          <div id="companyLogin" class="col-lg-4 wow fadeInUp ps-3" data-wow-delay="0.5s" style="cursor: pointer" onclick="location.href='${root }user/join_company';">
            <div class="h-100 bg-light d-flex align-items-center p-5">
              <div class="btn-lg-square bg-white flex-shrink-0">
                <i class="fa fa-hospital-alt text-primary"></i>
              </div>
              <div class="ms-4">
                <h5 class="mb-2"><span class="text-primary me-2">♥</span>기업</h5>
                <p class="mb-2">
                  보호소 또는 훈련소 등 단체회원은 사업자등록증 인증을 통해 기업 등록을 할 수 있습니다
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Join Select End -->
    
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


<script type="text/javascript">
	$('#companyLogin').on('click', function(){
		alert("가입을 희망하는 기업(훈련소, 보호소)은 기업 인증 절차가 필요합니다." + "\n" + "관리자의 이메일로 연락하여 상세한 가입 절차를 안내받기 바랍니다." +"\n\n"+ "※ 관리자 이메일: admin@sdamsdam.com");
		location.href = "${root}user/join_select";
	})
</script>


</body>
</html>