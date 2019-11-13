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
	<link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
    />
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
    
    <style>
    .navbar-brand{background-image:url("${pageContext.request.contextPath }/img/logo140x50.png"); width:130px; height:50px; z-index:99; margin-left:20px;}
    
    .admin-mode{
    	padding: 2px 8px;
    	background-color: #e74c3c;
    	color: #ffffff;
    	border-radius : 15px;
    	vertical-align: middle;
    	font-size: 12px;
    }
    
    .signOut {
    	cursor: pointer;
    	padding: 2px 8px;
    	background-color: #ecf0f1;
    	color: #2c3e50;
    	border-radius : 5px;
    	vertical-align: middle;
    	font-size: 12px;
    }
    
    .signOut:hover {
    	background-color: #2c3e50;
    	color: #ecf0f1;
    }
    
    .userName{
    	cursor: pointer;
    	font-weight: bold;
    }
    
    .admin-menu{
    	color : #e74c3c;
    }
    </style>
    
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
          
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
          	<li><a class="navbar-brand" href="${pageContext.request.contextPath }/login/dashboard" ></a></li>
            <li><a href="${pageContext.request.contextPath }/attendance/attendanceScreen">Attendance</a></li>
            <li><a href="${pageContext.request.contextPath }/subject/subjectList">Subject</a></li>
            <li><a href="${pageContext.request.contextPath }/board/freeBoard?page=1">FreeBoard</a></li>
            <li><a href="${pageContext.request.contextPath }/board/issueBoard?page=1">Issue</a></li>
            
            <c:if test="${userSchool == 99 }" >
            	<li><a href="${pageContext.request.contextPath }/homeUpdate/homeUpdateList"><span class="admin-menu">ADMIN MODE</span></a></li>
          	</c:if>
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
            	<c:if test="${userSchool == 99}"><span class="admin-mode">admin</span></c:if>
					<span id="userName"class="userName">${userName}</span> 님 환영합니다. &nbsp; &nbsp; <span id="singOut" class="signOut"> SIGN OUT </span>
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
	
	function move_myPage(){
		location.href = "${pageContext.request.contextPath }/user/myPage";
	}
	
	const userName = document.getElementById("userName");
	
	userName.addEventListener("click", move_myPage);
	
</script>
   

