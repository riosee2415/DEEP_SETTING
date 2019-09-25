<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <!-- init load data 
    	${boardTypeCD }
		${boardTypeNM }
		${boardTypeList }
     -->
    <br /><br /><br />
<div class="row">

	<div class="col-md-2">
	
	</div> <!-- LEFT AREA END -->
	
	
	
	
	<div class="col-md-8"> 
		<h3> 작성 페이지 </h3>
		<p class="bg-info">
			게시판 글을 작성할 수 있는 페이지 입니다. <br />
			비방, 비판 및 욕설 그리고 홍보에 대한 글을 작성할 경우 사용이 정지될 수 있습니다.
		</p>
		<form action="${pageContext.request.contextPath }/board/writeAction" method="POST">
			<table class="table table-condensed">
				<tr>
					<td style="vertical-align: middle; text-align: center; font-weight: bold; background-color: #E2ECFF">제목</td>
					<td colspan="3">
						<input id="write_boardTitle" name="write_boardTitle" class="form-control" type="text" />
					</td>
					
				</tr>
			
				<tr>
					<td style="vertical-align: middle; text-align: center; font-weight: bold; background-color: #E2ECFF">작성자</td>
					<td width="30%">
						<input id="write_id" name="write_id" class="form-control" type="text" value="${userId }" readonly/>
					</td>
					
					<td style="vertical-align: middle; text-align: center; font-weight: bold; background-color: #E2ECFF">게시판</td>
					<td>
						<select id="write_boardType" name="write_boardType" class="form-control">
							<c:forEach items="${boardTypeList }" var="list">
								<option value="${list.code }">${list.data }</option>
							</c:forEach>
						</select>
					</td>
				</tr>
					<td colspan="4" style="vertical-align: middle; text-align: center; font-weight: bold; background-color: #D8E5FE">
						내용
					</td>
				<tr>
				
				</tr>
					<td colspan="4" style="vertical-align: middle; text-align: center; font-weight: bold; background-color: #D8E5FE">
						<textarea id="write_contents" name="write_contents"  class="form-control" rows="20" ></textarea>
					</td>
				<tr>
					
				</tr>
			</table>
			
				
			<div style="float: right;">
				<button type="button" class="btn btn-warning btn-sm" onclick="history.back(-1);">돌아가기</button>
				<button type="submit" class="btn btn-info btn-sm" >작성</button>
			</div>
		
		</form>
	</div> <!-- CONTENTS AREA END -->
	
	
	
	
	
	<div class="col-md-2">
	
	</div> <!-- RIGHT AREA END -->

</div>

<script>

	$(document).ready(function(){
		var boardType = ${boardTypeCD}
		
		// #boardType set boardType data in init data
		$("#write_boardType").val(boardType).prop("selected", true);
	});

</script>