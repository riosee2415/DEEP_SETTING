<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="row">
	<div class="col-md-2">
	
	</div> <!-- col-md-2 end -->






	<div class="col-md-8">
		<br />
		<h3>이슈</h3>
		<p style="margin-bottom: 10px;" class="bg-success">자유로운 글을 작성하여 소통하는 게시판 입니다.
							<br />비방, 비판 및 욕설 그리고 홍보에 대한 글과 댓글을 작성할 경우 사용이 정지될 수 있습니다. </p>
		<br />
		
		<div class="input-group">
			<button type="button" class="btn btn-info btn-sm" onclick="writeBtn()">글 작성</button>
			
			<input style="width: 20%; float: right;" type="text" class="form-control" placeholder="제목 검색">
			<span class="input-group-btn">
		    	<img src="${pageContext.request.contextPath }/img/searchBTN.png" / width="31px;" height="31px;">
			</span>
		</div>
		
		<table class="table table-hover">
			<thead>
				<tr>
					<th style="width: 5%"><input id="allChk" type="checkbox" /></th>
					<th style="width: 5%">번호</th>
					<th style="width: 55%">제목</th>
					<th style="width: 10%">작성자</th>
					<th style="width: 10%">조회수</th>
					<th style="width: 15%">작성시간</th>
				</tr>
			</thead>
			<tbody id="boardTbody">
			</tbody>
		</table>
		
		
		
			
		<!-- PAGINATION AREA -->
		<div id="pagination">
		
		</div>
		
		
	</div> <!-- col-md-8 end -->








	<div class="col-md-2">
	
	</div> <!-- col-md-2 end -->

</div> <!-- row end -->


<form id="frm1" action="${pageContext.request.contextPath }/board/writeBoard" method="GET" > 
	<input id="boardType" name="boardType" type="hidden" value="3" />
</form>

<script>

	$(document).ready(function(){
		getBoardList(1);
	});

	
	function getBoardList(page) {
		$.ajax({
			url : "${pageContext.request.contextPath }/board/getIssueList_ajax",
			data : "page=" + page,
			success : function(data) {
				var htmlArr = data
						.split("================seperator================");
				$("#boardTbody").html(htmlArr[0]);
				$("#pagination").html(htmlArr[1]);
			}
		});
	}
	
	
	// write btn click
	function writeBtn()
	{
		$("#frm1").submit();
	}


</script>