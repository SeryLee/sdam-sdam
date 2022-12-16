<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
</head>
<body>

<c:import url="/WEB-INF/views/include/top_menu.jsp" />

<!-- 22.09.06 QnA 연결(임시) -->
    <!-- Page Header Start -->
    <div class="container-fluid header-bg py-5 mb-5 wow fadeIn" data-wow-delay="0.1s">
      <div class="container py-5">
        <h1 class="display-4 text-white mb-3 animated slideInDown">
          고객센터
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


<!-- 게시글 리스트 -->
<div class="container" style="margin-top:100px">
	<div class="card shadow">
		<div class="card-body">
			<h4 class="card-title">${boardInfoName }</h4>
			<table class="table table-hover" id='board_list'>
				<thead>
					<tr>
						<th class="text-center d-none d-md-table-cell">글번호</th>
						<th  class="text-center d-none d-md-table-cell">제목</th>
						<th class="text-center d-none d-md-table-cell">작성자</th>
						<th class="text-center d-none d-md-table-cell">작성날짜</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="obj" items="${contentList }">
					<tr>
						<td class="text-center d-none d-md-table-cell">${obj.content_idx }</td>
						<td><a href='${root }board/read?board_info_idx=${board_info_idx}&content_idx=${obj.content_idx}&page=${page}' class="text-black-50">${obj.content_subject }</a></td>
						<td class="text-center d-none d-md-table-cell">${obj.content_writer_name }</td>
						<td class="text-center d-none d-md-table-cell">${obj.content_date }</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
			
			<div class="d-none d-md-block">
				<ul class="pagination justify-content-center">
					<c:choose>
						<c:when test="${pageBean.prevPage <= 0 }">
							<li class="page-item disabled">
								<a href="#" class="page-link">이전</a>
							</li>
						</c:when>
						<c:otherwise>
							<li class="page-item">
								<a href="${root }board/main?board_info_idx=${board_info_idx}&page=${pageBean.prevPage}" class="page-link">이전</a>
							</li>
						</c:otherwise>
					</c:choose>
					<c:forEach var="idx" begin="${pageBean.min }" end="${pageBean.max }">
					<c:choose>
						<c:when test="${idx == pageBean.currentPage }">
							<li class="page-item active">
								<a href="${root }board/main?board_info_idx=${board_info_idx}&page=${idx}" class="page-link">${idx }</a>
							</li>
						</c:when>
						<c:otherwise>
							<li class="page-item">
								<a href="${root }board/main?board_info_idx=${board_info_idx}&page=${idx}" class="page-link">${idx }</a>
							</li>
						</c:otherwise>
					</c:choose>
					</c:forEach>
					<c:choose>
						<c:when test="${pageBean.max >= pageBean.pageCnt }">
							<li class="page-item disabled">
								<a href="#" class="page-link">다음</a>
							</li>
						</c:when>
						<c:otherwise>
							<li class="page-item">
								<a href="${root }board/main?board_info_idx=${board_info_idx}&page=${pageBean.nextPage}" class="page-link">다음</a>
							</li>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>
			
			<div class="d-block d-md-none">
				<ul class="pagination justify-content-center">
					<li class="page-item">
						<a href="#" class="page-link">이전</a>
					</li>
					<li class="page-item">
						<a href="#" class="page-link">다음</a>
					</li>
				</ul>
			</div>
			
			<div class="text-right">
				<a href="${root }customer/write" class="btn btn-primary">글쓰기</a>
			</div>
			
		</div>
	</div>
</div>

<c:import url="/WEB-INF/views/include/bottom_info.jsp"></c:import>

</body>
</html>






