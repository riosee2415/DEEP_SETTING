<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
*{padding:0; margin:0;}
a {text-decoration :none;}
ul {list-style:none;}
a, button {border:0; outline:0;}
h2 .page_tit{text-align: center; margin-top: 130px;line-height:50px;}
.wrap{width: 100%; height: 100%;}
.page { clear:both; width: 100%; height:100%; position:relative; }
.page_wrap {  width: 1280px; margin:0 auto;  }  
img{ width: 100%; height: 100%;}
#vs { width: 100%; overflow-x:hidden; background-color:#fff; padding-top: 50px; position:relative; }    
    .img_box { width: 400%; }
    .img_box li { float:left; width: 25%; }
    .img_box li .pic { display:block; width:100%px; float:left; margin-left: 40px; margin-top: 140px; }
    .img_box li .tit_box { width:100%; float: right; margin-right: 40px;  margin-bottom: 40px; }    
    .btn_box { position:absolute; right:100px; top: 600px; z-index:50; width:500px; height:14px;  }
    .btn_box li { width:150px; margin-left: 12px; float:left; }
    .btn_box li button { display:block; width:150px; height:14px; background-color:#fff; }    
    .btn_box li.on button { background-color:blue; }  
    .thum_lst li { float:left; width: 373px; margin-left:40px; position:relative; overflow:hidden; height:320px; margin-top: 40px;  }
    .thum_lst li a { color:#333; display:block; width:360px; height:300px; 
        overflow:hidden; border:3px solid transparent; margin:7px auto;
        transition:0.6s; transition-delay:0.1s; background-color:#e1e1e1; } 
    .thum_lst li a:after { content:"▶"; position:absolute; bottom:27px; right:24px; display:none; }
    
</style>
<div class="wrap">
<div class="page_wrap">
<div class="page" id="page1">
    
        <figure id="img">
        <a href="">
            <h2 class="page_tit">로고</h2>
        </a>
        
            <ul class="img_box">
                <li>
                    <h2 class="sub_tit"></h2>
                    <div class="tit_box">
                    <img src="http://placehold.it/1280X480/333" alt="임시이미지1" class="pic">
                    </div>
                    <!-- <div class="tit_box">
                    <img src="http://placehold.it/1280X360/333" alt="임시이미지2" class="pic">
                    </div>
                    <div class="tit_box">
                    <img src="http://placehold.it/1280X360/333" alt="임시이미지3" class="pic">
                    </div> -->
                                        
                </li>
            </ul>
        </figure>
        <ul class="btn_box">
            <li class="on"><button></button></li>
            <li><button></button></li>
            <li><button></button></li>
        </ul>
</div>
    <div class="page" id="page2">
        <section class="page_wrap">
            <h2 class="page_tit1"></h2>
            <ul class="thum_lst">
                <li class="col4">
                    <a href="">
                        <h4 class="cate_tit">title</h4>
                        <p class="lst_com"></p>
                            <a href="" class="go"></a>
                        
                    </a>
                </li>
                <li class="col4">
                    <a href="">
                        <h4 class="cate_tit">title</h4>
                        <p class="lst_com"></p>
                            <a href="" class="go"></a>
                        
                    </a>
                </li>
                <li class="col4">
                    <a href="">
                        <h4 class="cate_tit">title</h4>
                        <p class="lst_com"></p>
                            <a href="" class="go"></a>
                        
                    </a>
                </li>
            </ul>
        </section>
    </div>

</div>
</div>

    <!-- /container -->