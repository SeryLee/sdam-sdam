<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }/"/>
<script>
	alert('저장되었습니다')
// 	location.href = "${root}customer/read?qna_idx=${writeQnaBean.qna_idx}&page=1"
	location.href = "${root}customer/qna"
		
</script>