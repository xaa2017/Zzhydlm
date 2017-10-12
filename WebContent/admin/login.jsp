<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>后台登陆页</title>
<script src="../js/jquery-3.1.1.min.js"></script>
</head>
<body style="text-align:center;">
	<div style="align:center;margin-top:100px;">
	<h>海运大联盟后台管理系统</h>
	<form action="" name="myForm" method="post" onsubmit="return check_user()">	
		账号：<input type="text" name="uid"/><br/>
		密码：<input type="password"/ name="upass"><br/>
		<input type="submit" value="登陆">
	</form>
	</div>
	<script> 
		function check_user(){
			var xmlhttp;
			if(window.XMLHttpRequest){
				xmlhttp=new XMLHttpRequest();
			}else{
				xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
			}
			xmlhttp.open("POST","hello",true);
			xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
			var uid=document.forms["myForm"]["uid"].value;
			var upass=document.forms["myForm"]["upass"].value;
			if(null==uid||uid==""){
				alert("请输入账号");
				return false;
			}
			if(!(/^\w+$/).test(uid)){//验证账号为数字、字母、下划线组合
				alert("您的账号不符合规范");
				return false;
			}
			var params="uid="+uid+"&upass="+upass;
			//console.log();
			//return false;
			xmlhttp.send(params);//发送的数据
			xmlhttp.onreadystatechange=function(){
				if(xmlhttp.readyState==4&&xmlhttp.status==200){
					console.log("响应成功");
					//var res=xmlhttp.responseText;//验证的结果
					
				}
				//console.log("响应成功");
				console.log(xmlhttp.status+xmlhttp.readyState);
				window.location.href="../success.jsp";
			}
			
		}
	</script>	
</body>
</html>