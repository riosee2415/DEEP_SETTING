<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Signin Template for Bootstrap</title>
    
    <script
	  src="https://code.jquery.com/jquery-3.4.1.js"
	  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	  crossorigin="anonymous"></script>

	
	<!-- kakao address API -->
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	 
	 
    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath }/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath }/dist/css/signin.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/dist/css/sticky-footer-navbar.css" rel="stylesheet">
    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="${pageContext.request.contextPath }/assets/js/ie-emulation-modes-warning.js"></script>
    <script src="${pageContext.request.contextPath }/assets/js/bootstrap.min.js"></script>



	

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    
    
  </head>

  <body>
  
  <!-- Fixed navbar -->
    <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="${pageContext.request.contextPath }/login/dashboard">Deep Academic</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li><a href="#">Home</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="${pageContext.request.contextPath }/user/myPage">MyPage</a></li>
            <li><a href="${pageContext.request.contextPath }/subject/subjectList">Subject</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Community<span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="${pageContext.request.contextPath }/board/freeBoard?page=1">Free Board</a></li>
                <li><a href="${pageContext.request.contextPath }/board/issueBoard?page=1">Developer Issue</a></li>
                <li><a href="#">Gallery</a></li>
              </ul>
            </li>
          </ul>
          <!-- <form class="navbar-form navbar-left" role="search">
            <div class="form-group">
              <input type="text" class="form-control" placeholder="Search">
            </div>
            <button type="submit" class="btn btn-default">Submit</button>
          </form> -->
          <ul class="nav navbar-nav navbar-right">
          	<br />
          	<c:if test="${ !empty  userName}">  
            	<c:if test="${userSchool == 99}"><font color="#FF0000">[관리자]</font></c:if>
					${userName} 님 환영합니다. &nbsp; &nbsp; <span id="singOut"> -SIGN OUT- </span>
            </c:if>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>




<script>
	
	$("#singOut").click(function(){
		var result = confirm('로그아웃 하시겠습니까 ?'); 
		if(result) 
		{ 
			
		} else 
		{ 
			
		}

	});
	
	// Write Modal Open
	function writeBtn()
	{
		
	}

</script>
   

