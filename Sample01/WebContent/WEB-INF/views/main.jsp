<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style type="text/css">
.main-content{ height:100px }
.main-content ul { list-style: none; }
.main-content ul li{ float:left}
.ajax{height:80px}
.ajax ul { list-style: none;}
.ajax ul li { float:left;}
.ajax p { display: block;}
.ajax button { display: block }
</style>
</head>
<body>

<h1 style="text-align: center">Main</h1>
<div class="main-content">
	<ul>
		<li>이름 : </li>
		<li>
			<input type="text" id="name">
		</li>
		<li>나이 : </li>
		<li>
			<input type="text" id="age">
		</li>
		<li>
			<input type="button" onclick="func()" value="전송">
		</li>
	</ul>
	
</div>

<script type="text/javascript">
function func(){
	var name = document.querySelector("#name").value;
	var age = document.querySelector("#age").value;
	location.href="detail.do?name="+name+"&age="+age;
	
}
</script>


<div class="ajax">
	<h3>Ajax test</h3>
	<ul>
		<li>이름 : </li>
		<li>
			<input type="text" id="_name">
		</li>
	</ul>
	<p id="content"></p>
</div>
	<button type="button" onclick="ajax()">Ajax 가져오기</button>
<script type="text/javascript">
function ajax(){
	var sendData = {
			name:$("#_name").val()
		};
	$.ajax({
		url:"./goAjax.do",
		data:sendData,
		type:"get",
		success:function(data){
			$("#content").text(data);						
		}
	});
	
}
</script>

</body>
</html>