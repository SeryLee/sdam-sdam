<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="root" value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>개인회원 회원가입</title>
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
<link href="img/favicon.ico" rel="icon" />

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


<style type="text/css">
input::placeholder{
color: #ccc;
font-size: 0.7em;
}
</style>


</head>
<script>
	function checkUserIdExist(){
		var user_id = $("#user_id").val()
		
		if(user_id.lenght == 0){
			alert("아이디를 입력해주세요")
			return
		}
		$.ajax({
			url : '${root}user/checkUserIdExist/'+user_id,
			type : 'get',
			dataType : 'text',
			success : function(result){
				if(result.trim() == 'true'){
					alert('사용할 수 있는 아이디입니다')
					$("#userIdExist").val('true')
				}else {
					alert('사용할 수 없는 아이디입니다')
					$("#userIdExist").val('false')
				}
			}
		})
	}
	
	function resetUserIdExist(){
		$("#userIdExist").val('false')
	}
	
	function checkUserTelExist(){
		var user_tel = $("#user_tel").val()
		
		if(user_tel.lenght == 0){
			alert("전화번호를 입력해주세요")
			return
		}
		$.ajax({
			url : '${root}user/checkUserTelExist/'+user_tel,
			type : 'get',
			dataType : 'text',
			success : function(result){
				if(result.trim() == 'true'){
					alert('확인이 완료되었습니다')
					$("#userTelExist").val('true')
				}else {
					alert('이미 가입된 전화번호입니다')
					$("#userTelExist").val('false')
				}
			}
		})
	}
	
	function resetUserTelExist(){
		$("#userTelExist").val('false')
	}
</script>
<body>

	<c:import url="/WEB-INF/views/include/top_menu.jsp"></c:import>

	<!-- Page Header Start -->
	<div class="container-fluid header-bg py-5 mb-5 wow fadeIn"
		data-wow-delay="0.1s">
		<div class="container py-5">
			<h1 class="display-4 text-white mb-3 animated slideInDown">회원가입
			</h1>
			<nav aria-label="breadcrumb animated slideInDown">
				<ol class="breadcrumb mb-0">
					<li class="breadcrumb-item text-white"><a class="text-white"
						href="${root }main">Home</a> &nbsp;/</li>
					<li class="breadcrumb-item text-primary active" aria-current="page">
						<a class="text-white" href="${root }user/join_select">회원가입 &nbsp;/</a>
						
					</li>
					<li class="breadcrumb-item text-primary active" aria-current="page">개인회원</li>
				</ol>
			</nav>
		</div>
	</div>
	<!-- Page Header End -->
	
	<!-- Join Form Start -->
	<div class="container-xxl py-5">
		<div class="container">
			<div class="row g-5">
			
				<div class="col-lg-6 wow fadeInUp" data-wow-delay="0.5s">
					<div class="h-100" style="min-height: 400px">
						<img class="img-fluid" src="../image/join001.jpg" alt="빠르게가입하고 모든 테라피독을 만나보세요" />
					</div>
				</div>
				
				<div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
					<div class="card shadow">
						<div class="card-body">
	
<!-- 	<div class="row g-4 mb-5">
		<div class="container" style="margin-top: 100px">
			<div class="row">
				<div class="col-sm-3"></div>
				
				<div class="col-sm-6">
					<div class="card shadow">
						<div class="card-body"> -->
							<form:form action="${root }user/join_pro" method="post"
								modelAttribute="joinUserBean">
								<form:hidden path="userIdExist" />
								<form:hidden path="userTelExist" />
								<form:hidden path="user_info" value="user" />
								<div class="form-group">
									<form:label path="user_name">이름</form:label>
									<form:input path="user_name" class="form-control" placeholder="2 ~ 4자리의 한글 이름 입력"/>
									<form:errors path="user_name" style="color:red" />
								</div>
								<div class="form-group">
									<form:label path="user_id">아이디</form:label>
									<div class="input-group">
										<form:input path="user_id" class="form-control"
											onkeypress="resetUserIdExist()" />
										<div class="input-group-append">
											<button type="button" class="btn btn-primary"
												onclick="checkUserIdExist()">중복확인</button>
										</div>
									</div>
									<form:errors path="user_id" style="color:red" />
								</div>
								<div class="form-group">
									<form:label path="user_pw">비밀번호</form:label>
									<form:password path="user_pw" class="form-control" />
									<form:errors path="user_pw" style="color:red" />
								</div>
								<div class="form-group">
									<form:label path="user_pw2">비밀번호 확인</form:label>
									<form:password path="user_pw2" class="form-control" />
									<form:errors path="user_pw2" style="color:red" />
								</div>
								<div class="form-group">
									<form:label path="user_tel">전화번호</form:label>
									<div class="input-group">
										<form:input path="user_tel" class="form-control"
											onkeypress="resetUserTelExist()" placeholder="-를 제외하고 작성" />
										<div class="input-group-append">
											<button type="button" class="btn btn-primary"
												onclick="checkUserTelExist()">중복확인</button>
										</div>
									</div>
									<form:errors path="user_tel" style="color:red" />
								</div>
								<div class="form-group">
									<form:label path="user_address">주소</form:label>
									<div class="input-group mb-1">
										<form:input path="user_address" id="address_input"
											class="form-control" readonly="true"/>
										<div class="input-group-append">
											<button type="button" class="btn btn-primary"
												id="address_kakao"">주소검색</button>
										</div>
									</div>
									<form:input path="user_address" id="address_input"
										class="form-control" placeholder="상세주소 입력" />
									<form:errors path="user_address" style="color:red" />
								</div>
								<script
									src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
								<script>
						window.onload = function(){
						    document.getElementById("address_kakao").addEventListener("click", function(){ //주소입력칸을 클릭하면
						        //카카오 지도 발생
						        new daum.Postcode({
						            oncomplete: function(data) { //선택시 입력값 세팅
						                document.getElementById("address_input").value = data.address; // 주소 넣기
						                //document.querySelector("input[id=address_detail]").focus(); //상세입력 포커싱
						            }
						        }).open();
						    });
						}
						</script>
								<div class="form-group">
									<div class="text-right py-4 text-end">
										<form:button class="btn btn-primary" style="width:30%">회원가입</form:button>
									</div>
								</div>
							</form:form>
						</div>
					</div>
				</div>
				<div class="col-sm-3"></div>
			</div>
		</div>
	</div>
	<!-- Join Form End -->
	

	<c:import url="/WEB-INF/views/include/bottom_info.jsp"></c:import>

</body>
</html>

