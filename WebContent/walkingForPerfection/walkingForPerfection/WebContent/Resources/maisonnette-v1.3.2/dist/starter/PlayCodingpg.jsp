<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!DOCTYPE html>
	
	<html lang="en">

	<link rel="stylesheet" href= "list.css"/>
	<link rel="stylesheet" href= "playCodingPage.css"/>
    <script src="assets/js/sidebar.js" type="text/javascript"></script>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, inital-scale=1.0"/>
	<meta http-equiv="X-UA-Compatible" content="ie=edge"/>
	<head>
	    <title>메모장</title>

	  </head>
	  
	  <body>
	  
	  	        	    	    <button class="openbtn" onclick="openMenu()">
                            <div id="main">
                        <a>☰</a>
                        </div>
                        </button>
                    
       <!--사이드 메뉴 영역-->
       <div class="sidebar">
        <a class="closebtn" onclick="closeMenu()">×</a>
        <u><a class="prored">&emsp;언어 선택</a></u>	
        <a class="pro1" href="#">&emsp;JAVA</a>
        <a class="pro2" href="#">&emsp;C#</a>
        <a class="pro3" href="#">&emsp;HTML</a>
        <a class="pro4" href="#">&emsp;PYTHON</a>

        <a class="pu" href="#">&emsp;자료실</a>
        <a class="pu" href="#">&emsp;게시판</a>
    </div>
	    
	  
	   <h2 style="text-align: center; font-size: 50px;"> - 코딩 테스트 - </h2>
	   <h2 class= moved-h2>문제 : A + B	</h2>
 	
	
	    <form>

    
		 <div  style="display: inline-block; width: 3.5%;"></div>
	 	 <div  style="display: inline-block; width: 45%;"><textarea id="memo" name="memo"> </textarea><button class="btn"  >컴파일</button></div>
	 	 
		 <div  style="display: inline-block; width: 45%;"><textarea id="compile" name="compile">실행 결과 : </textarea> <button class="btn">방만들기</button></div>
		
	    </form>
	    
	    

	  </body>

	</html>