<%@page import="com.ecity.java.sql.table.MySQLTable"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <jsp:include page="/head.jsp"/>
<meta charset="UTF-8">
<title>SQL信息</title>

<style type="text/css">
thead>tr>td{
  text-align: center;
}
tbody>tr>td{
  text-align: center;
}
</style>
</head>
<body>
<div>
<%
MySQLTable sql=new MySQLTable("");
try{
  sql.SQL("select * from sys.sysprocesses where program_name like 'appserver%' order by spid");
  sql.Open();
  %>
  <table class="table table-striped">
    <thead>
      <tr>
        <td>spid</td>
        <td>hostname</td>
        <td>program_name</td>
        <td>last_batch</td>
        <td></td>
      </tr>
    </thead>
    <tbody>
	  <%
	  while (sql.next())
	  {
	    %>
	    <tr>
	      <td><a href="SqlProFiler.jsp?SPID=<%=sql.getString("spid") %>"><%=sql.getString("spid") %></a></td>
	      <td><%=sql.getString("hostname") %></td>
	      <td><%=sql.getString("program_name") %></td>
	      <td><%=sql.getString("last_batch") %></td>
	    </tr>
	    <%
	  }
	  %>
    </tbody>
  </table>
  <%
}
finally{
  sql.Close();
}
%>
</div>
</body>
</html>