<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "dao.*" %>
<%
	ArrayList<HashMap<String, String>> selectJobCaseList = EmpDAO.selectJobCaseList();
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title></title>
</head>
<body>
	<h1>CASE식을 이용한 정렬</h1>
	<table border="1">
	<tr>
		<th>ename</th>
		<th>job</th>
		<th>color</th>
	</tr>
		
		<%
			for (HashMap<String, String> jColor : selectJobCaseList) {
		%>
			
	<tr>
		<td><%=jColor.get("ename")%></td>
		<td><%=jColor.get("job")%></td>
		<td><%=jColor.get("color")%></td>					
	</tr>		
		<% 		
			}
		%>
	</table>
	
</body>
</html>