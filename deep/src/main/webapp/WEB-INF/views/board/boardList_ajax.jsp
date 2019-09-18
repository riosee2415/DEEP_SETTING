<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
TEST CALL AJAX

<c:forEach items="${boardList }" var="LIST">
	<tr>
		<td><input class="chk" type="checkbox" /></td>
		<td>${LIST.BOARD_UID }</td>
		<td><a href="#">${LIST.BOARD_TITLE }</a></td>
		<td>${LIST.BOARD_AUTHOR }</td>
		<td>${LIST.BOARD_HIT }</td>
		<td>${LIST.BOARD_TIME }</td>
	</tr>
</c:forEach>



================seperator================


<nav>
  <ul class="pagination pg-dark">
    <li class="page-item">
      <a class="page-link" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
        <span class="sr-only">Previous</span>
      </a>
    </li>
    <c:forEach begin="1" end="${pageSize }" step="1" var="pa">
    	<!-- page-item active -->
    	<!-- page-item  -->
    	
    	<c:choose>
    		<c:when test ="${page == pa }">
    			<li class="page-item active">
    		</c:when>
    		<c:otherwise>
    			<li class="page-item">
    		</c:otherwise>
    	</c:choose>
    	<a class="page-link" href="javascript:getBoardList(${pa })">${pa }</a></li>
    </c:forEach>
    <li class="page-item">
      <a class="page-link" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
        <span class="sr-only">Next</span>
      </a>
    </li>
  </ul>
</nav>