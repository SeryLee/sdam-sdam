<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="root" value="${pageContext.request.contextPath }/"/>
<!-- Topbar Start -->
	<div class="container-fluid bg-light p-0 wow fadeIn"
		data-wow-delay="0.1s">
		<div class="row gx-0 d-none d-lg-flex">
			<div class="col-lg-7 px-5 text-start">
				<div class="h-100 d-inline-flex align-items-center py-3 me-4">
					<small class="fa fa-map-marker-alt text-primary me-2"></small> <small>대전광역시 동구 우암로 352-21</small>
				</div>
				<div class="h-100 d-inline-flex align-items-center py-3">
					<small class="far fa-clock text-primary me-2"></small> <small>월 - 금 | AM 09:00 - PM 06.00</small>
				</div>
			</div>
			<div class="col-lg-5 px-5 text-end">
				<div class="h-100 d-inline-flex align-items-center py-3 ms-4">
					<c:choose>
						<c:when test="${loginUserBean.userLogin == true }">
								<c:choose>
									<c:when test="${loginUserBean.user_idx eq 1}">
										<i class="bi bi-person-circle"></i> &nbsp;<c:out value="${loginUserBean.user_name}" />님 &nbsp;&nbsp;&nbsp;
										<a role="button" href="${root}admin/user" class="btn btn-outline-warning ms-2">관리페이지</a>
										<a role="button" href="${root}user/logout" class="btn btn-outline-warning ms-2">로그아웃</a>
									</c:when>
									<c:otherwise>
										<i class="bi bi-person-circle"></i> &nbsp;<c:if test="${not empty loginUserBean.user_info}">테라피스트</c:if> <c:out value="${loginUserBean.user_name}" />님 &nbsp;&nbsp;&nbsp;
										<a role="button" href="${root}/user/modify" class="btn btn-outline-warning ms-2">마이페이지</a>
										<a role="button" href="${root}/user/logout" class="btn btn-outline-warning ms-2">로그아웃</a>
									</c:otherwise>
								</c:choose>
						</c:when>
						<c:otherwise>
							<a role="button" href="${root }user/join_select" class="btn btn-primary ms-2">회원가입</a>
							<a role="button" href="${root }user/login" class="btn btn-primary ms-2">로그인</a>
						</c:otherwise>
					</c:choose>				
				</div>
			</div>
		</div>
	</div>
	<!-- Topbar End -->
	
	

	<!-- Navbar Start -->
	<nav
		class="navbar navbar-expand-lg bg-white navbar-light sticky-top py-lg-0 px-4 px-lg-5 wow fadeIn"
		data-wow-delay="0.1s">
		<a href="${root }main" class="navbar-brand p-0"> <img
			class="img-fluid me-3" src="../img/icon/logo001.png" alt="Logo" />
		</a>
		<button type="button" class="navbar-toggler" data-bs-toggle="collapse"
			data-bs-target="#navbarCollapse">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse py-4 py-lg-0" id="navbarCollapse">
			<div class="navbar-nav ms-auto">
				<div class="nav-item dropdown">
					<a href="${root }introduce/intro" class="nav-item nav-link">쓰담쓰담소개</a>
				</div>
				<div class="nav-item dropdown">
					<a href="#" class="nav-link"
						data-bs-toggle="dropdown">테라피&nbsp;<i class="bi bi-chevron-down"></i></a>
					<div class="dropdown-menu rounded-0 rounded-bottom m-0">
						<a href="${root }service/therapist" class="dropdown-item">테라피스트</a> 
						<a href="${root }service/therapydog" class="dropdown-item">테라피독</a> 
					<!-- <a href="##" class="dropdown-item">서비스 신청</a> -->
					</div>
				</div>
				<div class="nav-item dropdown">
					<a href="#" class="nav-link"
						data-bs-toggle="dropdown">고객센터&nbsp;<i class="bi bi-chevron-down"></i></a>
					<div class="dropdown-menu rounded-0 rounded-bottom m-0">
						<a href="${root }customer/faq" class="dropdown-item">FAQ</a> 
						<a href="${root }customer/qna" class="dropdown-item">QnA</a>
						<a href="${root }customer/adopt" class="dropdown-item">입양문의</a> 
					</div>
				</div>
			</div>
			<a href="${root }book/book" class="btn btn-primary">테라피 신청하기<i class="fa fa-arrow-right ms-3"></i></a>
		</div>
	</nav>
	<!-- Navbar End -->