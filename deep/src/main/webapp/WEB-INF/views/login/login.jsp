<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
 <div class="container">
	<form class="form-signin" action="${pageContext.request.contextPath }/login/userCheck" method="POST">
		<h2 class="form-signin-heading">[DEEP] Sign in</h2>
		<label for="inputEmail" class="sr-only">ID</label>
		<input type="text" id="userId" class="form-control" placeholder="ID..." required autofocus>
		
		<label for="inputPassword" class="sr-only">Password</label>
		<input type="password" id="userPass" class="form-control" placeholder="PASSWORD..." required>
		
		<div class="checkbox">
			<label>
				<input type="checkbox" value="remember-me"> Remember me
			</label>
		</div>
		
		<button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
	</form>

</div> <!-- /container -->