<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css"
	rel="stylesheet" />

<!-- google icon -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,500,0,0" />

<!-- Libraries Stylesheet -->
<link href="../lib/animate/animate.min.css" rel="stylesheet" />
<link href="../lib/lightbox/css/lightbox.min.css" rel="stylesheet" />
<link href="../lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet" />

<!-- Customized Bootstrap Stylesheet -->
<link href="../css/bootstrap.min.css" rel="stylesheet" />

<!-- Template Stylesheet -->
<link href="../css/style.css" rel="stylesheet" />
<link href="../css/rome.css" rel="stylesheet" >





<!-- 데이트피커 -->
<!-- 22.09.13 데이터피커 -->
<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0ㅊ-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"> -->
<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css"> -->
<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha3/dist/js/bootstrap.bundle.min.js"></script> -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
<link href="../css/bootstrap-datepicker.kr.js" rel="stylesheet" />

<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">


</head>

<body>
	<!-- Spinner Start -->
	<div id="spinner"
		class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
		<div class="spinner-border text-primary"
			style="width: 3rem; height: 3rem" role="status">
			<span class="sr-only">Loading...</span>
		</div>
	</div>
	<!-- Spinner End -->

	<!-- TOP MENU -->
	<c:import url="/WEB-INF/views/include/top_menu.jsp"></c:import>

	<!-- Page Header Start -->
	<div class="container-fluid header-bg py-5 mb-5 wow fadeIn"
		data-wow-delay="0.1s">
		<div class="container py-5">
			<h1 class="display-4 text-white mb-3 animated slideInDown">예약하기</h1>
			<nav aria-label="breadcrumb animated slideInDown">
				<ol class="breadcrumb mb-0">
					<li class="breadcrumb-item"><a class="text-white"
						href="${root }main">Home &nbsp;/</a></li>
					<li class="breadcrumb-item text-primary active" aria-current="page">
						예약하기</li>
				</ol>
			</nav>
		</div>
	</div>
	<!-- Page Header End -->


	<!-- -------------------------- -->
	<div class="container-xxl py-5">
		<div class="container">
			<div class="row g-5 mb-5 align-items-end wow fadeInUp"
				data-wow-delay="0.1s">
				<div class="col-lg-6">
					<p>
						<span class="text-primary me-2">#</span>테라피독&nbsp;
						<span class="text-primary me-2">#</span>테라피스트
					</p>
					<h1 class="display-6 mb-0 pb-3">예약하기</h1>

				</div>
			</div>
		</div>
	</div>
	<!-- ------------------------- -->






	<form action="${root }book/book" method="post">
	<div class="container my-3">
	<input type="hidden" name="user_idx" value="${user_idx}">
	
	<!-- 지역 선택 -->
		<div class="pb-5">
			<h2 class="pb-2 border-bottom my-5">
				<span class="text-primary me-2">1</span> 지역 선택
			</h2>
			
		 		<div class="form-check ml-3 text-center">
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" value="서울"
							name="flexRadioDefault" id="flexRadioDefault1"> <label
							class="form-check-label" for="flexRadioDefault1"> 서울 </label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" value="부산"
							name="flexRadioDefault" id="flexRadioDefault2"> <label
							class="form-check-label" for="flexRadioDefault2"> 부산 </label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" value="대구"
							name="flexRadioDefault" id="flexRadioDefault3"> <label
							class="form-check-label" for="flexRadioDefault3"> 대구 </label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" value="인천"
							name="flexRadioDefault" id="flexRadioDefault4"> <label
							class="form-check-label" for="flexRadioDefault4"> 인천 </label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" value="광주"
							name="flexRadioDefault" id="flexRadioDefault5"> <label
							class="form-check-label" for="flexRadioDefault5"> 광주 </label>
					</div>
					
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" value="대전"
							name="flexRadioDefault" id="flexRadioDefault6"> <label
							class="form-check-label" for="flexRadioDefault6"> 대전 </label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" value="울산"
							name="flexRadioDefault" id="flexRadioDefault7"> <label
							class="form-check-label" for="flexRadioDefault7"> 울산 </label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" value="세종"
							name="flexRadioDefault" id="flexRadioDefault8"> <label
							class="form-check-label" for="flexRadioDefault8"> 세종 </label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" value="경기도"
							name="flexRadioDefault" id="flexRadioDefault9"> <label
							class="form-check-label" for="flexRadioDefault9"> 경기도 </label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" value="강원도"
							name="flexRadioDefault" id="flexRadioDefault10"> <label
							class="form-check-label" for="flexRadioDefault10"> 강원도 </label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" value="충청도"
							name="flexRadioDefault" id="flexRadioDefault11"> <label
							class="form-check-label" for="flexRadioDefault11"> 충청도 </label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" value="전라도"
							name="flexRadioDefault" id="flexRadioDefault12"> <label
							class="form-check-label" for="flexRadioDefault12"> 전라도 </label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" value="경상도"
							name="flexRadioDefault" id="flexRadioDefault13"> <label
							class="form-check-label" for="flexRadioDefault13"> 경상도 </label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" value="제주도"
							name="flexRadioDefault" id="flexRadioDefault14"> <label
							class="form-check-label" for="flexRadioDefault14"> 제주도 </label>
					</div>
				</div>
		</div>
		<!-- ------------- -->



		<!-- 날짜 및 시간선택 -->
<div class="py-5">
	<h2 class="pb-2 border-bottom my-5">
		<span class="text-primary me-2">2</span> 날짜 및 시간 선택
	</h2>


	<div class="container-fluid px-0 px-sm-4 mx-auto">
		<div class="row justify-content-center mx-0">
			<div class="col-lg-10">
				<div class="card border-0">
				
					<div class="row w-75 px-5 py-5 mx-auto mb-5 d-inline-block" style="border: 3px solid #FFCF57;">
				      	<h3 class="pt-2 pb-4"><i class="bi bi-calendar-check"></i>&nbsp;&nbsp;&nbsp;날짜·시간 예약안내</h3>
				      		<table>
				      			<tr>
				      				<td class="col-1 text-center"><p><i class="bi bi-check-lg"></i></td>
				      				<td><p> 원하는 <strong>날짜</strong>와 <strong>시간</strong>을 선택하십시오.</p></td>
				      			</tr>
				      			<tr>
				      				<td class="col-1 text-center"><p><i class="bi bi-check-lg"></i></td>
				      				<td><p> 테라피독 예약 신청은 10:00 AM부터 17:00 PM까지 가능하며 <strong>최소 1시간에서 최대 3시간</strong>까지 예약할 수 있습니다.</p></td>
				      			</tr>
				      			<tr>
				      				<td class="col-1 text-center"><p><i class="bi bi-exclamation-lg"></i></td>
				      				<td><p> 마지막 신청 시간으로 <strong style="color: #EC9532;">17:00 PM</strong>을 선택한 경우, 당일 테라피독 서비스는 <strong style="color: #EC9532;">18:00 PM</strong>에 종료됩니다.</p></td>
				      			</tr>
				      			<tr>
				      				<td class="col-1 text-center"><p><i class="bi bi-check-lg"></i></td>
				      				<td><p> 테라피독 한 마리당 하나의 신청서 작성이 필요합니다.</p></td>
				      			</tr>
				      		</table>
				      </div>
				
				

					<!-- 달력 추가 -->
					  <div class="content">
					    <div class="container text-left">
					      <div class="row justify-content-center">
					        <div class="col-md-10 text-center">
					          <h4 class="mb-5 text-center">날짜를 선택하세요</h4>
					          <input type="text" name="service_date"  class="form-control datepicker w-25 mx-auto mb-3" id="result" placeholder="날짜를 선택하세요">
<!-- 					          <form action="#" class="row"> -->
					            <div class="col-md-12">
					              <div id="inline_cal"></div>
					            </div>
<!-- 					          </form> -->
					        </div>
					      </div>
					    </div>
					  </div>
					<!-- ------------------------- -->


					<h4 class="my-5 text-center">이용희망 시간을 선택하세요</h4>
<!-- 					<form class="mx-auto">				 -->
						
						<div class="btn-group" role="group" aria-label="Basic checkbox toggle button group">
						  <input type="checkbox" value="10:00AM" class="btn-check" id="btncheck1" name="service_time" autocomplete="off">
						  <label class="btn btn-outline-warning" for="btncheck1">AM 10:00</label>
						
						  <input type="checkbox" value="11:00AM" class="btn-check" id="btncheck2" name="service_time" autocomplete="off">
						  <label class="btn btn-outline-warning" for="btncheck2">AM 11:00</label>
						
						  <input type="checkbox" value="12:00PM" class="btn-check" id="btncheck3" name="service_time" autocomplete="off">
						  <label class="btn btn-outline-warning" for="btncheck3">PM 12:00</label>
						
						  <input type="checkbox" value="13:00PM" class="btn-check" id="btncheck4" name="service_time" autocomplete="off">
						  <label class="btn btn-outline-warning" for="btncheck4">PM 13:00</label>
						
						  <input type="checkbox" value="14:00PM" class="btn-check" id="btncheck5" name="service_time" autocomplete="off">
						  <label class="btn btn-outline-warning" for="btncheck5">PM 14:00</label>
						
						  <input type="checkbox" value="15:00PM" class="btn-check" id="btncheck6" name="service_time" autocomplete="off">
						  <label class="btn btn-outline-warning" for="btncheck6">PM 15:00</label>
						
						  <input type="checkbox" value="16:00PM" class="btn-check" id="btncheck7" name="service_time" autocomplete="off">
						  <label class="btn btn-outline-warning" for="btncheck7">PM 16:00</label>
						
						  <input type="checkbox" value="17:00PM" class="btn-check" id="btncheck8" name="service_time" autocomplete="off">
						  <label class="btn btn-outline-warning" for="btncheck8">PM 17:00</label>
						</div>
<!-- 					</form> -->
				</div>
			</div>
		</div>
	</div>
</div>
<!-- ----------------------------------------------- -->
		

		
		
		
		<!-- 테라피독 선택 -->
<div class="py-5">
	<h2 class="pb-2 border-bottom my-5">
		<span class="text-primary me-2">4</span> 테라피독 선택
	</h2>
	
	<!-- 키워드 선택하기 -->
			<div class="d-flex pb-5 wow ">
 			<div class="my-1">
				<span class="material-symbols-outlined" style="margin-top:5px;">sound_detection_dog_barking</span>
			</div>
			<div class="mt-2 ps-2 pe-3">
				<b> 덩치 </b> 
			</div>
			<div class="my-1 px-3">
				<input type="checkbox"  class="btn-check" name="dog_tag" id="btnradio1" autocomplete="off" >
				<label class="btn btn-outline-primary" for="btnradio1"># 대형견</label>
			</div>
			<div class="my-1 px-3">
				<input type="checkbox"  class="btn-check" name="dog_tag" id="btnradio2" autocomplete="off" >
				<label class="btn btn-outline-primary" for="btnradio2"># 중형견</label>
			</div>
			<div class="my-1 px-3">
				<input type="checkbox"  class="btn-check" name="dog_tag" id="btnradio3" autocomplete="off" >
				<label class="btn btn-outline-primary" for="btnradio3"># 소형견</label>
			</div>
			
			<div class="px-5"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div>
			
			<div class="my-1 ps-4">
				<span class="material-symbols-outlined" style="margin-top:5px;">pets</span>
			</div>
			<div class="mt-2 ps-2 pe-3">
				<b> 성격 </b> 
			</div>
			<div class="my-1 px-3">
				<input type="checkbox" class="btn-check" name="btnradio" id="btnradio4" autocomplete="off" >
				<label class="btn btn-outline-primary" for="btnradio4"># 활발한</label>
			</div>
			<div class="my-1 px-3">
				<input type="checkbox" class="btn-check" name="btnradio" id="btnradio5" autocomplete="off" >
				<label class="btn btn-outline-primary" for="btnradio5"># 조용한</label>
			</div>
			<div class="my-1 px-3">
				<input type="checkbox" class="btn-check" name="btnradio" id="btnradio6" autocomplete="off" >
				<label class="btn btn-outline-primary" for="btnradio6"># 애교많은</label>
			</div>
			<div class="my-1 px-3">
				<input type="checkbox" class="btn-check" name="btnradio" id="btnradio7" autocomplete="off" >
				<label class="btn btn-outline-primary" for="btnradio7"># 장난기 많은</label>
			</div>
			<div class="my-1 ps-3">
				<input type="checkbox" class="btn-check" name="btnradio" id="btnradio8" autocomplete="off" >
				<label class="btn btn-outline-primary" for="btnradio8"># 사교적인</label>
			</div>
		</div>


		<div class="row row-cols-1 row-cols-md-3 mb-3 text-center" id="showDogs" style="display:none; flex-direction:row; flex-wrap:wrap;">
		
			<c:forEach var="obj" items="${dogBookList}">
				<div class="col">
					<div class="card2 mb-4 rounded-3">
						
						<div class="form-check form-inline-block py-3" style="margin: 0 auto;">
							<input class="form-check-input h4" type="radio" value="24" name="dog_idx" id="${obj.dog_idx}">
							<label class="form-check-label h5 pt-2" for="${obj.dog_idx}">${obj.dog_name}</label>
						</div>
						
						<div class="card-body">
							<div class="position-relative"  style="min-height: 500px;">
							<img class="img-fluid" src="${root }upload/${obj.dog_picture}" alt="테라피독 ${obj.dog_name}" />
								<div class="animal-text p-4">
									<h5 class="text-white mb-0">${obj.dog_name}</h5>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach> 
			
			
		
			<nav aria-label="Page navigation example" style="margin: 0 auto;">
				<ul class="pagination">
					<li class="page-item"><a class="page-link" href="?page=1" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li> 
					<li class="page-item"><a class="page-link" href="?page=${pager.prev}"><span aria-hidden="true" style="font-size:0.6em;"><i class="bi bi-chevron-left"></i></span></a></li>		
									
					<c:forEach var="page" items="${pager.list}">
					<li class="page-item"><a class="page-link" href="?page=${page}">${page}</a></li>
					</c:forEach>
								
					<li class="page-item"><a class="page-link" href="?page=${pager.next}"><span aria-hidden="true" style="font-size:0.6em;"><i class="bi bi-chevron-right"></i></span></a></li>
					<li class="page-item"><a class="page-link" aria-label="Next" href="?page=${pager.last}"><span aria-hidden="true">&raquo;</span></a></li>
				</ul>
			</nav>	
			
			
		</div>

</div>
	<!-- ------------------------------ -->
		
		
		
<div class="text-center mb-5">
	<button type="submit" class="btn btn-primary btn-lg" onclick="location.href='${root}book/bookdone'">신청하기</button>
</div>


</div>
</form>


<c:import url="/WEB-INF/views/include/bottom_info.jsp"></c:import>

<!-- Back to Top -->
<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i	class="bi bi-arrow-up"></i></a>

<!-- JavaScript Libraries -->
<!-- <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script> -->
<script	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="../lib/wow/wow.min.js"></script>
<script src="../lib/easing/easing.min.js"></script>
<script src="../lib/waypoints/waypoints.min.js"></script>
<script src="../lib/counterup/counterup.min.js"></script>
<script src="../lib/owlcarousel/owl.carousel.min.js"></script>
<script src="../lib/lightbox/js/lightbox.min.js"></script>

<!-- Template Javascript -->
<script src="../js/main.js"></script>


<!-- 22.09.15 달력 -->
<script src="../js/popper.min.js"></script>
<script src="../js/rome.js"></script>






<script type="text/javascript">

function loadDogs(area, reservation_date, keywords) {
    $.ajax({
   	    url: "${pageContext.request.contextPath}/showdog?area=" + area + "&reservation_date=" + reservation_date + "&keywords=" + keywords,
   	    method: "get",
   	    dataType: "json",
   	    success: function (html) {
			$('#showDogs').html(html).show();  // ajax로 강아지 목록만 있는 dogs.jsp 페이지를 불러옴
   	    }
   	})   
}

let area = 기본값;
let reservation_date = 기본값;
let keywords = 기본값;

//지역선택시 강아지 선택하기
$(document).ready(function(){

	/*

	1. 지역클릭하면 선택한 지역 값 가져와서 area 변수에 저장하기
	2. 예약일 선택하면 선택한 날짜 값 가져와서 reservation_date 변수에 저장하기
	3. 키워드 클릭하면 선택한 키워드 값 가져와서 keywords 변수에 저장하기

	위 3개의 동작을 할 때마다 ajax로 강아지 필터링한 결과 불러오기 -> loadDogs()함수

	

	*/
   $('[name="flexRadioDefault"]').on("click", function(){
      const mode = document.getElementById("showDogs");
       mode.style.display = 'flex';
//        mode.style.flex-direction = 'row';
//        mode.style.flex-wrap = 'wrap';
//        flex-direction:row; flex-wrap:wrap;
   });
   
   	var checkedlocal = $('[name="flexRadioDefault"]').val();
   	
   	$.ajax({
   	    url: "${pageContext.request.contextPath}/?service_local=" + checkedlocal,
   	    method: "get",
   	    data: {
   	    },
   	    dataType: "json",
   	    success: function (v) {
   	        }
   	    })   
   
});
</script>


<script type="text/javascript">
$(function(){
  $('#datepicker').datepicker();
});


$(function() {
		rome(inline_cal, {time: false, inputFormat: 'YYYY-MM-DD'}).on('data', function (value) {
		  result.value = value;
		});
	});
	
	


$('[name="service_time"]').attr('data-no', function (i){
	return i;
});
	
	
$('[name="service_time"]').on('change', function(e){
	console.log(this.id, this.checked);
	
	if(this.checked == false) {
		$('[name="service_time"]').prop('checked', false);
		this.checked = true;
		return;
	} //체크된걸 클릭 시 false로 바뀜
	
	var $timeCheck = $('[name="service_time"]:checked');
	if($timeCheck.length >= 2){
		var startId = Number($timeCheck.eq(0).attr('data-no'));
		var endId = Number($timeCheck.eq(-1).attr('data-no'));
		console.log(startId, endId);
		if(endId-startId >2) {
			alert('안돼');
			this.checked = false;
			e.preventDefault();
			return;
		}
		var flag = false;
		$('[name="service_time"]').each(function( i, e ){
/* 			if(i == startId) {
				flag = true;
			}
			e.checked = flag;
			if(i == endId) {
				flag = false;
			} */
			e.checked = startId<=i && i<=endId;
		});
	}
});

</script>

<script type="text/javascript">
$(document).ready(function(){
	//datepicker setting ver.kor
	$(".datepicker").datepicker({
		dateFormat: 'yy-mm-dd',
		prevText: '이전 달',
		nextText: '다음 달',
		monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		dayNames: ['일', '월', '화', '수', '목', '금', '토'],
		dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
		dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
		showMonthAfterYear: true, //달력 연 다음에 월로 세팅
		yearSuffix: '년'
	});
	
	});
</script>



</body>
</html>
