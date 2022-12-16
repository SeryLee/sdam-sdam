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
<link href="lib/animate/animate.min.css" rel="stylesheet" />
<link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet" />
<link href="lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet" />

<!-- Customized Bootstrap Stylesheet -->
<link href="../css/bootstrap.min.css" rel="stylesheet" />

<!-- Template Stylesheet -->
<link href="../css/style.css" rel="stylesheet" />
<!-- 회원가입 기업 검색창 js -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="../js/data.js"></script>
</head>
<script>
	
	$(function () {	//화면 로딩후 시작
		$("#searchInput").autocomplete({  //오토 컴플릿트 시작
			source: List,	// source는 data.js파일 내부의 List 배열
			focus : function(event, ui) { // 방향키로 자동완성단어 선택 가능하게 만들어줌	
				return false;
			},
			minLength: 1,// 최소 글자수
			delay: 100,	//autocomplete 딜레이 시간(ms)
			//disabled: true, //자동완성 기능 끄기
		});
	});
</script>


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
	
	
	
	
</script>
<body>

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
    
<div class="container" style="margin-top:100px">
	<div class="row">
		<div class="col-sm-3"></div>
		<div class="col-sm-6">
			<div class="card shadow">
				<div class="card-body">
					<form:form action="${root }user/join_pro" method="post" modelAttribute="joinUserBean" enctype="multipart/form-data">
						<form:hidden path="userIdExist"/>
						<form:hidden path="userTelExist"/>
						<form:hidden path="user_info" value="T"/>
						<div class="form-group">
							<form:label path="company_id">소속회사 </form:label>
							<form:input  path="company_id" class="form-control" id="searchInput" />
						</div>
						
						<div class="form-group">
							<form:label path="user_name">이름</form:label>
							<form:input path="user_name" class="form-control"/>
							<form:errors path="user_name" style="color:red"/>
						</div>
						
						<div class="form-group">
							<form:label path="therapist_level">테라피스트 경력</form:label>
							<form:input path="therapist_level" class="form-control" placeholder="숫자를 입력해주세요"/>
						</div>
						
						<div class="form-group">
							<form:label path="user_id">아이디</form:label>
							<div class="input-group">
								<form:input path="user_id" class="form-control" onkeypress="resetUserIdExist()"/>
								<div class="input-group-append">
									<button type="button" class="btn btn-primary" onclick="checkUserIdExist()">중복확인</button>
								</div>
							</div>
							<form:errors path="user_id" style="color:red"/>
						</div>
						<div class="form-group">
							<form:label path="user_pw">비밀번호</form:label>
							<form:password path="user_pw" class="form-control"/>
							<form:errors path="user_pw" style="color:red"/>
						</div>
						<div class="form-group">
							<form:label path="user_pw2">비밀번호 확인</form:label>
							<form:password path="user_pw2" class="form-control"/>
							<form:errors path="user_pw2" style="color:red"/>
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
						<div class="form-group pb-4">
							<form:label path="upload_file" class="pb-2">프로필사진</form:label>
							<form:input type="file" path="upload_file" class="form-control pb-3" accept="image/*"/>
						</div> 
						<div class="form-group">
							<div class="text-right">
								<form:button class="btn btn-primary">회원가입</form:button>
							</div>
						</div>
					</form:form>
				</div>
			</div>
		</div>
		<div class="col-sm-3"></div>
	</div>
</div>

<c:import url="/WEB-INF/views/include/bottom_info.jsp"></c:import>

</body>
</html>