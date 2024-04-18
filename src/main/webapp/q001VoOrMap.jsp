<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "vo.*" %>
<%@ page import = "dao.*" %>

<!-- Controller -->
<%
	ArrayList<Dept> deptlist  = DeptDAO.selectDeptList();
	ArrayList<Emp> emplist  = EmpDAO.selectEmptList();
	ArrayList<HashMap<String, Object>> deptonOffList = DeptDAO.selectDeptOnOffList();
	ArrayList<HashMap<String, Object>> empAndDeptList = EmpDAO.slecetEmpAndDeptList();
%>

<!-- View -->
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>q001VoOrMap - Query예제 001</title>
</head>
<body>
	<h1>Dept List</h1>
	<table border="1">
		<tr>
			<th>deptno</th>
			<th>dname</th>
			<th>loc</th>
		</tr>
		<%
			for(Dept d : deptlist) {
		%>
			<tr>
				<td><%=d.deptNo %></td>
				<td><%=d.dname %></td>
				<td><%=d.loc %></td>
			</tr>
		<% 	
			}
		%>
	</table>
	
	<h1>Emp List</h1>
	<table border="1">
		<tr>
			<th>emptNo</th>
			<th>ename</th>
			<th>sal</th>
		</tr>
		<%
			for(Emp e : emplist) {
		%>
			<tr>
				<td><%=e.empNo %></td>
				<td><%=e.ename %></td>
				<td><%=e.sal %></td>
			</tr>
		<% 	
			}
		%>
	</table>
	
	<h1>Dept + onOff List</h1>
		<table border="1">
		<tr>
			<th>deptno</th>
			<th>dname</th>
			<th>loc</th>
			<th>onOff</th>
			
		</tr>
		<%
			//MAP 단점 : 형변환이 필요할수 있고 IDE 자동 완성 기능을 사용 할수 없음 
			for(HashMap<String, Object> don : deptonOffList) {
		%>
			<tr>
				<td><%=(Integer)(don.get("deptNo")) %></td>
				<td><%=(String)(don.get("dname")) %></td>
				<td><%=(String)(don.get("loc") )%></td>
				<td><%=(String)(don.get("onOff")) %></td>
				
			</tr>
		<% 	
			}
		%>
	</table>
	
	<h1>Emp INNER JOIN Dept List</h1>
		<table border="1">
		<tr>
			<th>empNO</th>
			<th>ename</th>
			<th>deptNo</th>
			<th>dname</th>
			
		</tr>
		<%
			//MAP 단점 : 형변환이 필요할수 있고 IDE 자동 완성 기능을 사용 할수 없음 
			for(HashMap<String, Object> ed : empAndDeptList) {
		%>
			<tr>
				<td><%=(Integer)(ed.get("empNO")) %></td>
				<td><%=(String)(ed.get("ename")) %></td>
				<td><%=(String)(ed.get("deptNo") )%></td>
				<td><%=(String)(ed.get("dname")) %></td>
				
			</tr>
		<% 	
			}
		%>
	</table>
</body>
</html>