<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    

	
	<div class="row">
		<br /> <br /> <br />
		<div class="col-md-2">
		</div>	


		<div class="col-md-8">
			<form id="frm1" action="${pageContext.request.contextPath }/user/updateUserInfo" method="POST">
				<table class="table table-condensed">
					<tr>
						<td><font color="#FF0000">*ID</font></td>
						<td>
							<input class="form-control" type="text" id="userId" name="userId" value="${userId}" readonly/>
						</td>
						<td></td>
					</tr>
					
					<tr>
						<td>NAME</td>
						<td>
							<input class="form-control" type="text" id="userName" name="userName" value="${userName}"/>
						</td>
						<td></td>
					</tr>
					
					<tr>
						<td><font color="#FF0000">*PASSWORD</font></td>
						<td>
							<input class="form-control" type="password" id="userPass" name="userPass" value="${userPass}" readonly/>
						</td>
						<td></td>
					</tr>
				
					<tr>
						<td>SCHOOL</td>
						<td>
							<select class="form-control" id="userSchool" name="userSchool">
								<c:forEach items="${SC001}" var="CODE">
									<option value="${CODE.code}">${CODE.data}</option>
								</c:forEach>
							</select>
						</td>
						<td></td>
					</tr>
					
					<tr>
						<td>MOBILE</td>
						<td>
							<input class="form-control" type="text" id="userMobile" name="userMobile" value="${userMobile}" />
						</td>
						<td></td>
					</tr>
					
					<tr>
						<td>BIRTH</td>
						<td>
							<input class="form-control" type="date" id="userBirth" name="userBirth" value="${userBirth}" />
						</td>
						<td></td>
					</tr>
					
					<tr>
						<td>YEAR</td>
						<td>
							<select class="form-control" id="userYear" name="userYear" >
								<option value="1"> 1학년 </option>
								<option value="2"> 2학년 </option>
								<option value="3"> 3학년 </option>
							</select>		
						</td>
						<td></td>
					</tr>
					
					<tr>
						<td>EMAIL</td>
						<td>
							<input class="form-control" type="text" id="userEmail" name="userEmail" value="${userEmail}" />
						</td>
						<td></td>
					</tr>
					
					<tr>
						<td>ZIPCODE</td>
						<td>
							<input class="form-control" type="text" id="userZipcode" name="userZipcode" value="${userZipcode}" />
						</td>
						<td><button type="button" class="btn btn-default" onclick="addAPI()" >검색</button></td>
						
					</tr>
					
					<tr>
						<td>ADD1</td>
						<td colspan="2">
							<input class="form-control" type="text" id="userAdd1" name="userAdd1" value="${userAdd1}" />
						</td>
					</tr>
					<tr>
						<td>ADD2</td>
						<td colspan="2">
							<input class="form-control" type="text" id="userAdd2" name="userAdd2" value="${userAdd2}" />
						</td>
					</tr>
					
				</table>
			
			</div>	

			<div class="col-md-2">
			</div>	
		</div> <!-- row1 end -->
		
		<div class="row">
			<div class="col-md-8">
			</div>
			
			<div class="col-md-4">
				<button type="button" class="btn btn-info" onclick="updateBtn()">확인</button>
			</div>
		</form>
	</div> <!-- row2 end -->
	
	
<script>

	$(document).ready(function(){
		var userYear = ${userYear};
		var userSchool = ${userSchool};
		
		// #userYear set userYear data in session
		$("#userYear").val(userYear).prop("selected", true);
		
		// #userSchool set userYear data in session
		$("#userSchool").val(userSchool).prop("selected", true);
		
	});
	
	/* $(function() {
        //input을 datepicker로 선언
        $("#userBirth").datepicker({
            dateFormat: 'yy-mm-dd' //Input Display Format 변경
            ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
            ,showMonthAfterYear:true //년도 먼저 나오고, 뒤에 월 표시
            ,changeYear: true //콤보박스에서 년 선택 가능
            ,changeMonth: true //콤보박스에서 월 선택 가능                
            ,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
            ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
            ,buttonImageOnly: true //기본 버튼의 회색 부분을 없애고, 이미지만 보이게 함
            ,buttonText: "선택" //버튼에 마우스 갖다 댔을 때 표시되는 텍스트                
            ,yearSuffix: "년" //달력의 년도 부분 뒤에 붙는 텍스트
            ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'] //달력의 월 부분 텍스트
            ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip 텍스트
            ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 부분 텍스트
            ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 부분 Tooltip 텍스트
            ,minDate: "-1M" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
            ,maxDate: "+1M" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)                
        });                    
        
        //초기값을 오늘 날짜로 설정
        // $('#datepicker').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)            
    }); */
	
	
    // Update Button Click Event
	function updateBtn()
	{
		var result = confirm('정보를 변경하시겠습니까 ?'); 
		
		if(result) 
		{ 
			$("#frm1").submit();
		} 
		else 
		{ 
			
		}
	}
    
    
    // Kakao Adress API open Btn event
    function addAPI()
    {
    	new daum.Postcode({
            oncomplete: function(data) {
            	$("#userZipcode").val(data.zonecode);
            	$("#userAdd1").val(data.roadAddress);
            	$("#userAdd2").val("");
            	$("#userAdd2").focus();
            	
            }
        }).open();
    }
    
   


</script>
	