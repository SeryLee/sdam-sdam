<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>테라피독 정보</title>
</head>
<body>
	<div class="mt-3"> 견종 : ${dogInfo.dog_type} | ${dogInfo.dog_sex} | 나이 : ${dogInfo.dog_age} | 지역 : ${dogInfo.company_local} | ${dogInfo.dog_neutralization}</div>
	<div>${dogInfo.dog_memo}</div>
</body>
</html>