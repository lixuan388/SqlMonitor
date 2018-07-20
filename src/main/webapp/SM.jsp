<%@page import="com.ecity.java.sql.table.MySQLTable"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <jsp:include page="/head.jsp"/>
<meta charset="UTF-8">
<title>SQL信息</title>
</head>
<body>
<div>
<%
MySQLTable sql=new MySQLTable("");
try{
	sql.SQL("select * from sys.sysprocesses where program_name like 'appserver%' order by spid");
	sql.Open();
	%>
  <table class="table">
    <thead>
      <tr>
        <td>spid</td>
        <td>hostname</td>
        <td>program_name</td>
        <td>last_batch</td>
      </tr>
    </thead>
	<%
	while (sql.next())
	{
		%>
		<tr>
	    <td><%=sql.getString("spid") %></td>
	    <td><%=sql.getString("hostname") %></td>
	    <td><%=sql.getString("program_name") %></td>
	    <td><%=sql.getString("last_batch") %></td>
		</tr>
		<%
	}
	%>
	</table>
	<%
}
finally{
	
}
%>
</div>
</body>
</html>