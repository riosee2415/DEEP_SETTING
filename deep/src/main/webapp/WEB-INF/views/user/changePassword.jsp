<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/reset.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/changePass.css" />


<div class="row" style="margin-top: 50px;">
	<div class="col-md-2"></div>

	<div class="col-md-8">
		<div class="title">Change Password</div>
		
		<form>
			<div class="pass-area">
				<input class="passInput" type="password" placeholder="Current Password" />
			</div>
			
			<div class="pass-area">
				<input class="passInput" type="password" placeholder="Change Password" />
			</div>
			
			<div class="pass-area">
				<input class="passInput" type="password" placeholder="Verify Password" />
			</div>
		</form>
		
		<div class="btn-area">
			<input type="button" class="subBtn" id="subBtn" value="변경" />
		</div>
		
	</div>

	<div class="col-md-2"></div>

</div>