<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
*{padding:0; margin:0; overflow-x: hidden;}
a {text-decoration :none;}
ul {list-style:none;}
a, button {border:0; outline:0;}
h2{ background-image: url("../main/webapp/img/logo.png"); position: absolute; z-index:99; width: 700px; height: 150px; }
.wrap{width: 100%; height: 100%;}
.page { clear:both; width: 100%; height:100%; position:relative; }
.page_wrap {  width: 100%;  }  
img{ width: 100%; height: 100%;}
#vs { width: 100%; overflow-x:hidden; background-color:#fff; padding-top: 50px; position:relative; }    
.img_box { width: 400%;}
.img_box li { float:left; width: 25%; }
.img_box li .pic { display:block; width:100%; margin-top: 0px; z-index:10;}
   /* .img_box li .tit_box { width:100%; float: right; margin-right: 40px;  margin-bottom: 40px; }     */
.btn_box { position:absolute; right:100px; top: 330px; z-index:50; width:500px; height:14px;  }
.btn_box li { width:150px; margin-left: 12px; float:left; }
.btn_box li button { display:block; width:150px; height:10px; background-color:#fff; }    
.btn_box li.on button { background-color:blue; }  
.thum_lst li { float: left; width: 300px; margin-left: 80px; overflow: hidden; height: 300px; margin-top: 60px; position: relative;
    left: 14%;}
.thum_lst li a{ display: block; width: 330px; height: 300px; overflow: hidden; margin: 10px auto;  background-color: #d9daff;}
.cate_tit{ padding: 10px; color: #1b1436; text-decoration: underline; overflow-y: hidden;}
.lst_tit{ padding: 10px;}
.lst_com{ padding: 10px;}
.go { display:block; width:120px; height: 40px; border:2px solid #333; color:#333; text-align:center; line-height: 35px; margin : 0 60px; overflow-y: hidden;} 
</style>
<div class="wrap">
<div class="page_wrap">
<div class="page" id="page1">
    
        <figure id="img">
        <ul class="img_box">
                <li>
                    <div class="tit_box">
                    <img src="http://placehold.it/800X200/333" alt="임시이미지1" class="pic">
                    </div>
                    <!-- <div class="tit_box">
                    <img src="http://placehold.it/1280X360/333" alt="임시이미지2" class="pic">
                    </div>
                    <div class="tit_box">
                    <img src="http://placehold.it/1280X360/333" alt="임시이미지3" class="pic">
                    </div> -->                      
                </li>
                <a href=""><h2 class="page_tit">로고</h2></a>
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
                    <a href="" >
                        <h4 class="cate_tit">title</h4>
                        <p class="lst_com">Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse, molestias!</p>
                        <span class="go">이동하기</span> 
                    </a>
                </li>
                <li class="col4">
                    <a href="">
                        <h4 class="cate_tit">title</h4>
                        <p class="lst_com">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quas, natus!</p>
                        <span class="go">이동하기</span> 
                   </a>
                </li>
                <li class="col4">
                    <a href="" >
                        <h4 class="cate_tit">title</h4>
                        <p class="lst_com">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus, alias?</p>
                        <span class="go">이동하기</span> 
                    </a>
                </li>
            </ul>
        </section>
    </div>

</div>
</div>

    <!-- /container -->