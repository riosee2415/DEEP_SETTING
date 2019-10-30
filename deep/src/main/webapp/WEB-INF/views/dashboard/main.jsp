<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
*{padding:0; margin:0; }
a {text-decoration :none;}
ul {list-style:none;}
a, button {border:0; outline:0;}
.wrap{width: 100%; height: 100%; overflow: hidden;}
.page { clear:both; width: 100%; height:100%;}
.page_wrap {  width: 100%;  }  
#page1{width: 100%; height: 100%; }
.vs { width: 100vw; height: 710px; position: relative; }
.banner_box { width: 400%; height: 700px;  overflow: hidden;}
.banner_box img { display: block; width: 25%; height: 700px; float: left; transition: 0.5s;}
.thum_lst li { float: left; width: 300px; margin-left: 80px; overflow: hidden; height: 300px; margin-top: 60px; position: relative; left: 14%;}
.thum_lst li a{ display: block; width: 330px; height: 300px; overflow: hidden; margin: 10px auto;  background-color: #d9daff;}
.cate_tit{ padding: 10px; color: #1b1436; text-decoration: underline; overflow-y: hidden;}
.lst_tit{ padding: 10px;}
.lst_com{ padding: 10px;}
.go { display:block; width:120px; height: 40px; border:2px solid #333; color:#333; text-align:center; line-height: 35px; margin : 0 60px; overflow-y: hidden;} 
</style>
<div class="wrap">
<div class="page_wrap">
	<div class="page" id="page1">
        <figure class="vs">
                <ul class="banner_box">
                <%-- 	<c:forEach items="${images }" var="image">
	                    <li><img src="${pageContext.request.contextPath }/${image.logo_path}/${image.logo_name}" alt="배너1" class="banner_pic1"></li>                	
                	</c:forEach> --%>
                	<li><img src="${pageContext.request.contextPath }/${bgPath}/${bgName}" alt="배너1" class="banner_pic1"></li> 
                </ul>
                
            </figure>
	</div>
    <div class="page" id="page2">
    
        <section class="page_wrap">
            <h2 class="page_tit1"></h2>
            <ul class="thum_lst">
                <li class="col4">
                    <a href="" >
                        <h4 class="cate_tit">${title_01}</h4>
                        <p class="lst_com">${content_01}</p>
                        <span class="go">이동하기</span> 
                    </a>
                </li>
                <li class="col4">
                    <a href="">
                        <h4 class="cate_tit">${title_02}</h4>
                        <p class="lst_com">${content_02}</p>
                        <span class="go">이동하기</span> 
                   </a>
                </li>
                <li class="col4">
                    <a href="" >
                        <h4 class="cate_tit">${title_03}</h4>
                        <p class="lst_com">${content_03}</p>
                        <span class="go">이동하기</span> 
                    </a>
                </li>
            </ul>
        </section>
    </div>

</div>
</div>

    <!-- /container -->