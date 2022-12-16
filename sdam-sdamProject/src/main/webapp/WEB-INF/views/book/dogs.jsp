<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="root" value="${pageContext.request.contextPath }/"/>
<c:choose>
	<c:when test="${param.importAt eq 'Y'}">
		<c:forEach var="dog" items="${dogBookList}">
	        <div class="col">
	            <div class="card2 mb-4 rounded-3">
	                
	                <div class="form-check form-inline-block py-3" style="margin: 0 auto;">
	                    <input class="form-check-input h4" type="radio" name="dog_idx" value="${dog.dog_idx}">
	                    <label class="form-check-label h5 pt-2" for="${dog.dog_idx}">${dog.dog_name}</label>
	                </div>
	                
	                <div class="card-body">
	                    <div class="position-relative" style="min-height: 500px;">
	                    <img class="img-fluid" src="${root}upload/${dog.dog_picture}" alt="테라피독 ${dog.dog_name}" />
	                        <div class="animal-text p-4">
	                            <h5 class="text-white mb-0">${dog.dog_name}</h5>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </c:forEach> 
	</c:when>
	<c:otherwise>
		<%-- otherwise에 스크립트 같은거 쓰면 된다 by문교수 --%>
		<c:forEach var="dog" items="${dogBookList}">
		        <div class="col">
		            <div class="card2 mb-4 rounded-3">
		                
		                <div class="form-check form-inline-block py-3" style="margin: 0 auto;">
		                    <input class="form-check-input h4" type="radio" id="${dog.dog_idx}" value="${dog.dog_idx}" name="dog_idx">
		                    <label class="form-check-label h5 pt-2" for="${dog.dog_idx}">${dog.dog_name}</label>
		                </div>
		                
		                <div class="card-body">
		                    <div class="position-relative" style="min-height: 500px;">
		                    <img class="img-fluid" src="${root}upload/${dog.dog_picture}" alt="테라피독 ${dog.dog_name}" />
		                        <div class="animal-text p-4">
		                            <h5 class="text-white mb-0">${dog.dog_name}</h5>
		                        </div>
		                    </div>
		                </div>
		            </div>
		        </div>
		    </c:forEach> 
		    
		<%-- <nav aria-label="Page navigation example" style="margin: 0 auto;">
		    <ul class="pagination">
		        <li class="page-item"><a class="page-link" href="?page=1" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li> 
		        <li class="page-item"><a class="page-link" href="?page=${pager.prev}"><span aria-hidden="true" style="font-size:0.6em;"><i class="bi bi-chevron-left"></i></span></a></li>		
		                        
		        <c:forEach var="page" items="${pager.list}">
		        <li class="page-item"><a class="page-link" href="?page=${page}">${page}</a></li>
		        </c:forEach>
		                    
		        <li class="page-item"><a class="page-link" href="?page=${pager.next}"><span aria-hidden="true" style="font-size:0.6em;"><i class="bi bi-chevron-right"></i></span></a></li>
		        <li class="page-item"><a class="page-link" aria-label="Next" href="?page=${pager.last}"><span aria-hidden="true">&raquo;</span></a></li>
		    </ul>
		</nav> --%>	
		
	</c:otherwise>
</c:choose>
