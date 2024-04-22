<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "dao.*" %>
<%
	ArrayList<Integer> DeptNoList = EmpDAO.selectDeptNoList();
	ArrayList<HashMap<String, Integer>> selectDeptNoCntList = EmpDAO.selectDeptNoCntList();
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title></title>
</head>
<body>
	<select name ="deptNO">
		<option value="">:::선택하세요:::</option>
		<%
			for( Integer i : DeptNoList ) {
		%>
			<option><%=i%></option>
		<%		
			}
		%>
		
	</select>
	<h1>DISTINCT 대신 GROUP BY 를 사용하는 경우</h1>
	<select name="deptNo">
		<option value="">|||선택하세요|||</option>
		<%
			for(HashMap<String, Integer> dNo : selectDeptNoCntList ) {
		%>
			<option value="<%=dNo.get("deptno")%>">
				<%=dNo.get("deptno")%>
				/ <%=dNo.get("cnt") %>명
			</option>
			
		<% 		
			}
		%>
		
		
	</select>
</body>
</html>