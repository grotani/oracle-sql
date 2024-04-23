<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import ="vo.*" %>
<%@ page import ="dao.*" %>
<%
	ArrayList<Emp> list = null;
	String[] ck = request.getParameterValues("ck");
	
	if(ck == null) { // null 이 아니면 입력한 값 출력 
		System.out.println(ck + "<== ck");	
	} else { // null 일때 ck 값 출력 
		System.out.println(ck.length + "<== ck"); 
		ArrayList<Integer> ckList = new ArrayList<>();
		for(String s : ck) {
			ckList.add(Integer.parseInt(s));
		}
		list = EmpDAO.selectEmpListByGrade(ckList);
		System.out.println(list.size() + "결과 셋 행 ");
	}
		
	
%>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <title></title>
</head>
<body>
   <h1>EMP GRADE 검색</h1>
   <form action="./q004WhereIn.jsp" method="post">
      GRADE : 
      <%
         for(int i=1; i<6; i=i+1) {
      %>
            <input name="ck" type="checkbox" value="<%=i%>"><%=i%>
      <%      
         }
      %>
      <br>
      <button type="submit">검색</button>
   </form>
   
   <hr>
   <h1>결과 View</h1>
   <%
   		if(ck == null) { // (list == null) 
   			return; // ck가 null 이면 아무것도 출력없이 끝 	 			
   		}
   	%>
   	<table border="1">
   		<tr>
   			<th>ename</th>
   			<th>grade</th>
   		</tr>
   		<%
   			for(Emp e : list) {
   		%>
   				<tr>
   					<td><%=e.getEname() %></td>
   					<td><%=e.getGrade() %></td>
   				</tr>
   		<% 		
   			}
   		%>
   	
   	</table>
</body>
</html>