<%@page import="com.ecity.java.sql.table.MySQLTable"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String SPID=request.getParameter("SPID")==null?"-1":request.getParameter("SPID");



String userAgent = request.getHeader("user-agent").toLowerCase();
System.out.print("user-agent:");
System.out.print(userAgent);
//if(userAgent.indexOf("micromessenger")>-1){//微信客户端
//    request.setAttribute("isWx", "1");
//}else{
//    request.setAttribute("isWx", "0");
//}
%>    
<!DOCTYPE html>
<html>
<head>
  <jsp:include page="/head.jsp"/>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
<%
MySQLTable sql=new MySQLTable("");
try{
  sql.SQL("select (select name from sys.trace_events where trace_event_id=EventClass ) as EventClassName,* from t20180710 where datediff(mi,starttime,getdate())<2 and not cpu is null  and spid="+SPID);
  sql.Open();
  %>
  <table class="table table-striped">
    <thead>
      <tr>
        <td style="width:250px">TextData</td>
        <td>CPU</td>
        <td>Reads</td>
        <td>Writes</td>
        <td>Duration</td>
        <td>RowNumber</td>
        <td>EventClassName</td>
        <td>StartTime</td>
        <td>EndTime</td>
      </tr>
    </thead>
    <tbody>
    <%
    while (sql.next())
    {
      %>
      <tr>
        <td><%=sql.getString("TextData") %></td>
        <td><%=sql.getString("CPU") %></td>
        <td><%=sql.getString("Reads") %></td>
        <td><%=sql.getString("Writes") %></td>
        <td><%=sql.getString("Duration") %></td>
        <td><%=sql.getString("RowNumber") %></td>
        <td><%=sql.getString("EventClassName") %></td>
        <td><%=sql.getString("StartTime") %></td>
        <td><%=sql.getString("EndTime") %></td>
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