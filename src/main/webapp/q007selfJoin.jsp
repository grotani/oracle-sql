<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "dao.*" %>
<%@ page import = "java.util.*" %>
<!-- 컨트롤러 -->
<%
	ArrayList<HashMap<String, Object>> list
		=EmpDAO.selectSelfJoin();
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title></title>
</head>
<body>
	<h1>매니저 정보</h1>
	<table border="1">
		<tr>
			<th>empno</th>
			<th>ename</th>
			<th>grade</th>
			<th>mgrName</th>
			<th>mgrGrade</th>
		</tr>
		<%
			for(HashMap<String, Object> m : list) {
		%>
				<tr>
					<td><%=(Integer)(m.get("empno"))%></td>
					<td><%=(String)(m.get("ename"))%></td>
					<td>
						<%
							for(int i=0; i<(Integer)m.get("grade"); i=i+1) {
						%>
							&#128018;
						<% 		
							}
						%>
					</td>
					<td><%=(String)(m.get("mgrName"))%></td>
					<td>
						<%
							for(int i=0; i<(Integer)m.get("mgrGrade"); i=i+1) {
						%>
							&#128153;
						<% 		
							}
						%>
					</td>				
				</tr>
		<% 		
			}
		%>	
	</table>
	
</body>
</html>