<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
String InitialScale=request.getParameter("InitialScale")==null?"1":(String)request.getParameter("InitialScale");
%>    
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">	
    <meta name="viewport" id="webviewport" content="width=device-width,initial-scale=<%=InitialScale %>,user-scalable=0"> 
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <script type="text/javascript" src="/js/jquery/jquery.form.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/res/js/ECityAlert.js"></script>

		<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
		<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
		

		<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
		<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
		

    	
	<link type="text/css" rel="stylesheet" href="/dist/style/weui.min.css?d=${ sessionScope.URLDateString}">
		
<%
	request.setCharacterEncoding("UTF-8") ;  //解决中文乱码的问题
%>
	