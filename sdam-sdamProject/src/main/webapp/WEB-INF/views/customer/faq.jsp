<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <div
      class="container-fluid header-bg py-5 mb-5 wow fadeIn"
      data-wow-delay="0.1s"
    >
      <div class="container py-5">
        <h1 class="display-4 text-white mb-3 animated slideInDown">
          FAQ
        </h1>
        <nav aria-label="breadcrumb animated slideInDown">
          <ol class="breadcrumb mb-0">
				<li class="breadcrumb-item">
					<a class="text-white" href="${root }main">Home &nbsp;/</a>
				</li>
				<li class="breadcrumb-item">
					<a class="text-white">고객센터 &nbsp;/</a>
				</li>
            <li class="breadcrumb-item text-primary active" aria-current="page" href="${root }customer/faq">
            	FAQ
            </li>
          </ol>
        </nav>
      </div>
    </div>
    <!-- Page Header End -->

	<div class="container-xxl pt-5">
	<div class="container">
		<div class="row g-5 mb-5 align-items-end wow fadeInUp"
			data-wow-delay="0.1s">
			<div class="col-lg-6">
				<h1 class="display-6 mb-0 pb-3">자주 묻는 질문(FAQ)</h1>
				<p>
					<span class="text-primary me-2">#</span>쓰담쓰담 이용에 관련하여 자주 질문하시는 내용에 대한 답변을 모았습니다.
				</p>
			</div>
		</div>
		</div>
	</div>

	<!-- FAQ Content Start -->
	<div class="container-xxl pb-5">
		<div class="container">
			<!-- <h3 class="display-6 text-center mb-5 wow fadeInUp pb-5" data-wow-delay="0.1s">자주 묻는 질문 (FAQ)</h3> -->
			<div class="accordion m-sm-auto my-sm-5" id="accordionExample">
	
					<div class="accordion-item">
					<h2 class="accordion-header" id="headingOne">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#collapseOne"
							aria-expanded="false" aria-controls="collapseOne">
							Question #1 쓰담 쓰담 서비스 이용 시간이 어떻게 되나요?</button>
					</h2>
					<div id="collapseOne" class="accordion-collapse collapse"
						aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
						<div class="accordion-body"><strong>선택하신 테라피독 서비스 신청 시간 단위는 최소 1시간부터 최대 3시간까지입니다.</strong></div>
					</div>
				</div>
	
				<div class="accordion-item">
					<h2 class="accordion-header" id="headingTwo">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#collapseTwo"
							aria-expanded="false" aria-controls="collapseTwo">
							Question #2 서비스를 3시간 이상 이용할 수 있는 방법이 있나요?</button>
					</h2>
					<div id="collapseTwo" class="accordion-collapse collapse"
						aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
						<div class="accordion-body">
							<strong>테라피독 이용 시간은 최대 3시간이며 연장이 불가능합니다.</strong>
							쓰담쓰담에서는 테라피독 컨디션과 테라피스트의 서비스 질을 고려하여 서비스 이용 시간을 최대 3시간으로 한정을 두고 있습니다.
							서비스 연장을 희망하는 경우, 다른 테라피독을 선택하여 서비스를 이용해 주시기 바랍니다. 
						</div>
					</div>
				</div>
				<div class="accordion-item">
					<h2 class="accordion-header" id="headingThree">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#collapseThree"
							aria-expanded="false" aria-controls="collapseThree">
							Question #3 서비스를 신청했는데 신청 주소를 변경해야 하는 일이 생겼어요! 어떻게 해야하나요?</button>
					</h2>
					<div id="collapseThree" class="accordion-collapse collapse"
						aria-labelledby="headingThree" data-bs-parent="#accordionExample">
						<div class="accordion-body">
							<strong>서비스 이용 최소 사흘 전에 기관에 연락하여 주소 변경을 하시기 바랍니다.</strong>
							기관에서 서비스 신청 접수가 확인되면, 2 ~ 3일 후 신청 연락처로 연락이 갑니다. 지역 변경이 필요한 경우에는 서비스 취소를 하고 다시 신청해 주시기 바랍니다.
						</div>
					</div>
				</div>
				<div class="accordion-item">
					<h2 class="accordion-header" id="headingFour">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#collapseFour"
							aria-expanded="false" aria-controls="#collapseFour">
							Question #4 공격성이 있는 치매를 가진 어르신이 테라피독 서비스를 이용할 수 있나요? </button>
					</h2>
					<div id="collapseFour" class="accordion-collapse collapse"
						aria-labelledby="headingFour" data-bs-parent="#accordionExample">
						<div class="accordion-body">
							<strong>치매 경도에 따라 서비스 이용에 제한을 두고 있습니다.</strong> 자세한 사항은 QnA 게시판 [공지] 치매경도에 따른 서비스 신청 제한을 읽어주세요.
						</div>
					</div>
				</div>
				<div class="accordion-item">
					<h2 class="accordion-header" id="headingFive">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#collapseFive"
							aria-expanded="false" aria-controls="collapseFive">
							Question #5 테라피스트 & 테라피독 구성에서 둘 중 하나를 바꾸고 싶으면 어떻게 하나요?</button>
					</h2>
					<div id="collapseFive" class="accordion-collapse collapse"
						aria-labelledby="headingFive" data-bs-parent="#accordionExample">
						<div class="accordion-body">
							<strong>테라피스트들이 각 소속되어 있는 테라피독을 집중적으로 케어하고 관리하는 시스템으로 구성되어 있어 변경은 불가합니다.</strong>
							테라피독과 테라피스트의 서비스를 이용하는 과정에서 불편한 부분이 있으신 경우, 쓰담쓰담에 문의해주신다면 신속하게 처리해드리도록 하겠습니다.
						</div>
					</div>
				</div>
				<div class="accordion-item">
					<h2 class="accordion-header" id="headingSix">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#collapseSix"
							aria-expanded="false" aria-controls="collapseSix">
							Question #6 입양 신청을 했는데 취소하고 싶으면 어떻게 해야하나요?</button>
					</h2>
					<div id="collapseSix" class="accordion-collapse collapse"
						aria-labelledby="headingSix" data-bs-parent="#accordionExample">
						<div class="accordion-body">
							<strong>방문 이전에 기관에 연락하여 입양 취소 연락을 하시면 됩니다.</strong>
							쓰담쓰담을 통한 강아지 입양은 입양 신청 후 2~3일 이내에 기관에서 확인 후 신청 폼에 작성하신 연락처로 연락을 하여 입양견의 픽업 날짜를 조율하는 방식입니다.
							픽업 날짜를 조율하기 이전에 해당 기관에 입양 취소의사를 밝히시면 됩니다. <br> ※ 입양 신청 후 2회 이상 취소할 시, 입양 신청이 불가함을 알려드립니다
						</div>
					</div>
				</div>
				<div class="accordion-item">
					<h2 class="accordion-header" id="headingSeven">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#collapseSeven"
							aria-expanded="false" aria-controls="collapseSeven">
							Question #7 보호소에 후원을 하고 싶어요! 가능한가요?</button>
					</h2>
					<div id="collapseSeven" class="accordion-collapse collapse"
						aria-labelledby="headingSeven" data-bs-parent="#accordionExample">
						<div class="accordion-body">
							따뜻한 손길을 보내주셔서 감사드립니다. 후원을 원하시는 보호소가 있으시다면, 쓰담쓰담에 문의하시거나 후원을 희망하는 보호소에 직접 전화하여 후원 의사를 밝혀주시면 됩니다.
						</div>
					</div>
				</div>
				<div class="accordion-item">
					<h2 class="accordion-header" id="headingEight">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#collapseEight"
							aria-expanded="false" aria-controls="collapseEight">
							Question #8 갑자기 서비스가 취소되었습니다. 무슨 일인가요?</button>
					</h2>
					<div id="collapseEight" class="accordion-collapse collapse"
						aria-labelledby="headingEight" data-bs-parent="#accordionExample">
						<div class="accordion-body">
							테라피독의 컨디션 난조로 인하여 간혹 서비스 이용이 취소되는 경우가 있습니다. 보다 나은 서비스 제공을 위한 선택이므로 너른 마음의 양해를 구합니다.
							추후 기존에 신청했다 취소된 테라피독을 재신청하시면 1시간 서비스 무료 이용권을 드립니다.
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

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


