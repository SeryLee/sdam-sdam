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

<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,500,0,0" />

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
<c:import url="/WEB-INF/views/include/top_menu.jsp"/>

<!-- Page Header Start -->
<div class="container-fluid header-bg py-5 mb-5 wow fadeIn" data-wow-delay="0.1s">
	<div class="container py-5">
		<h1 class="display-4 text-white mb-3 animated slideInDown">
          테라피독 (Therapy Dog)
		</h1>
		<nav aria-label="breadcrumb animated slideInDown">
			<ol class="breadcrumb mb-0">
				<li class="breadcrumb-item">
					<a class="text-white" href="${root }main">Home &nbsp;/</a>
				</li>
				<li class="breadcrumb-item text-white">
					테라피 &nbsp;/
				</li>
				<li class="breadcrumb-item text-primary active" aria-current="page">
					테라피독
				</li>
			</ol>
		</nav>
	</div>
</div>
<!-- Page Header End -->

<!-- Animal Start -->
<div class="container-xxl py-5">
	<div class="container">
	
		<div class="row g-5 mb-5 align-items-end wow fadeInUp" data-wow-delay="0.1s">
			<div class="col-lg-6" >
				<p><span class="text-primary me-2">#</span>테라피독(Therapy Dog)</p>
				<h1 class="display-6 mb-0">우리는 쓰담쓰담의 <span class="text-primary">테라피독</span>입니다</h1>
			</div>
 			
 			<div class="col-lg-6 text-lg-end">
				<a class="btn btn-primary py-3 px-5" href="${root}service/addDog">테라피독 등록하기</a>
			</div> 
		</div> 

		
	<!-- 키워드 선택하기 -->
		<div class="d-flex pb-1 wow fadeInUp" data-wow-delay="0.2s">
 			<div class="my-1">
				<span class="material-symbols-outlined" style="margin-top:5px;">sound_detection_dog_barking</span>
			</div>
			<div class="mt-2 ps-2 pe-3">
				<b> 덩치 </b> 
			</div>
			<div class="my-1 px-3">
				<input type="checkbox" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off" >
				<label class="btn btn-outline-primary" for="btnradio1"># 대형견</label>
			</div>
			<div class="my-1 px-3">
				<input type="checkbox" class="btn-check" name="btnradio" id="btnradio2" autocomplete="off" >
				<label class="btn btn-outline-primary" for="btnradio2"># 중형견</label>
			</div>
			<div class="my-1 px-3">
				<input type="checkbox" class="btn-check" name="btnradio" id="btnradio3" autocomplete="off" >
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
				<label class="btn btn-outline-primary" for="btnradio7"># 장난기많은</label>
			</div>
			<div class="my-1 ps-3">
				<input type="checkbox" class="btn-check" name="btnradio" id="btnradio8" autocomplete="off" >
				<label class="btn btn-outline-primary" for="btnradio8"># 사교적인</label>
			</div>
		</div><hr>

		
		<div class="row pt-4">		
			<div class="wow fadeInUp" data-wow-delay="0.2s" style="display:flex; flex-direction:row; flex-wrap:wrap;">
				<c:forEach var="obj" items="${dogList}">
					<div class="col col-lg-4 col-md-6 px-3 py-3">
						<a class="animal-item" data-dog-id="${obj.dog_idx}" href="#">
							<div class="position-relative">
							<img class="img-fluid dimg" src="${root }upload/${obj.dog_picture}" alt="테라피독 ${obj.dog_name}" width="100%"/>
								<div class="animal-text p-4">
									<c:set var="keyW" value="${fn:split(obj.dog_tag, ',')}"/>
									<p class="text-white small text-uppercase mb-0"># ${obj.dog_region} <c:forEach var="word" items="${keyW}"># ${word} </c:forEach> </p>
									<h5 class="text-white mb-0 dogname">${obj.dog_name} >></h5>
								</div>
							</div>
						</a>
					</div>
				</c:forEach>
			</div>
			
				
		<div class="wow fadeInUp" data-wow-delay="0.4s" style="display:flex; flex-direction:row; flex-wrap:wrap;">
				
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
				
		
	</div>
</div>


<!-- Modal -->
<div class="modal modal-center fade" id="myModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel"></h5>
        <button type="button" class="btn-close" onclick="pop1();" aria-label="Close"></button>
      </div>
      <div class="modal-body">
   		<img class="img-fluid dimgv" src="" width="100%"/>
   <%-- <div class="mt-3">견종 / 성별 / 나이 / 지역</div>
        <div>소개글입니다. 귀여운 임댕댕</div> --%>
        <div class="dog_info">
        
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" onclick="pop1();"> 닫기 </button>
        <a href="${root }user/login"><button type="button" class="btn btn-primary" onclick="logingo()">테라피신청하기</button></a>
      </div>
    </div>
  </div>
</div>

<script>
var myModal = new bootstrap.Modal(document.getElementById('myModal'));

$(".animal-item").on("click", function(){
	
	var dogid = $(this).attr("data-dog-id"); 
	
	var dname = $(".dogname", this).text(); //엘리먼트의 내용 가져옴 (자바의 함수는 넣고,빼는 이름이 같다)
	$("#exampleModalLabel").text(dname); //내용 넣기
	
	var dimg = $(".dimg", this).attr("src");
	$(".dimgv").attr("src", dimg);

	console.log(dogid);
	
	//ajax 화면에 있는 값 말고 db에 있는 값을 넣을 시, 결과값 받는 함수로 받아온 결과값을 text 넣고 모달에 띄움
	$.ajax({
		url : '/sdam-sdamProject/service/getDogInfo?dog_idx='+dogid,
		type : 'GET',
		success : function(result){
			$('.dog_info').html(result).show();
		}
	});
	
	myModal.show();
	

});

function pop1() {
	myModal.hide();
}

$('.myModal').modal('show').css({
	'margin-top': function(){
		return -($(this).height() / 2);
	},
	'margin-left': function(){
		return -($(this).width() / 2);
	}
});

function logingo(){
	alert("로그인 시 예약 가능합니다.");
	return false; 
}
</script>
<!-- Animal End -->

<!-- BOTTOM MENU -->
<c:import url="/WEB-INF/views/include/bottom_info.jsp"/>

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