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
</head>
<body>

<c:import url="/WEB-INF/views/include/top_menu.jsp" />


<!-- 22.09.06 QnA-->
    <!-- Page Header Start -->
    <div class="container-fluid header-bg py-5 mb-5 wow fadeIn" data-wow-delay="0.1s">
      <div class="container py-5">
        <h1 class="display-4 text-white mb-3 animated slideInDown">
          QnA
        </h1>
        <nav aria-label="breadcrumb animated slideInDown">
				<ol class="breadcrumb mb-0">
					<li class="breadcrumb-item text-white"><a class="text-white"
						href="${root }main">Home</a> &nbsp;/</li>
					<li class="breadcrumb-item text-primary active text-white" aria-current="page">고객센터 &nbsp;/</li>	
					<li class="breadcrumb-item text-primary active" aria-current="page">QnA</li>
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
				<h1 class="display-6 mb-0 pb-3">QnA</h1>
				<p>
					<span class="text-primary me-2">#</span>문의 사항을 게시판에 남겨주세요.
				</p>
			</div>
		</div>
		</div>
	</div>
<!-- --------- QnA end ----------- -->

<div class="container" style="margin-top:100px">
	<div class="row">
		<div class="col-sm-3"></div>
		<div class="col-sm-6">
			<div class="card shadow">
				<div class="card-body">
					<form:form action="${root }customer/write_pro" method="post" modelAttribute="writeQnaBean" enctype="multipart/form-data">
						<form:hidden path="qna_idx"/>
						<form:hidden path="qna_writer_idx"/>
						<div class="form-group">
							<form:label path="qna_subject">제목</form:label>
							<form:input path="qna_subject" class="form-control"/>
							<form:errors path="qna_subject" style="color:red"/>
						</div>
						<div class="form-group">
							<form:label path="qna_content">내용</form:label>
							<form:textarea path="qna_content" class="form-control" rows="10" style="resize:none"/>
							<form:errors path="qna_content" style="color:red"/>
						</div>
<!-- 						<div class="form-group"> -->
<%-- 							<form:label path="upload_file">첨부 이미지</form:label> --%>
<%-- 							<form:input type="file" path="upload_file" class="form-control" accept="image/*"/> --%>
<!-- 						</div> -->
						<div class="form-group">
							<div class="text-right">
								<button type="submit" class="btn btn-primary">작성하기</button>
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
