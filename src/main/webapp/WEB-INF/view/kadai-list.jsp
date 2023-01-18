<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Account2" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>ID</th>
			<th>名前</th>
			<th>年齢</th>
			<th>性別</th>
			<th>メール</th>
			<th>電話番号</th>
			<th>SALT</th>
			<th>PASSWORD</th>
		</tr>
	<%
	

		List<Account2> list = (ArrayList<Account2>)request.getAttribute("list");
		for(Account2 a : list) {
	%>
		<tr>
			<td><%=a.getId() %>
			<td><%=a.getName() %></td>
			<td><%=a.getAge() %></td>
			<td><%=a.getGender() %></td>
			<td><%=a.getMail() %></td>
			<td><%=a.getPhone_number() %>
			<td><%=a.getSalt() %>
			<td><%=a.getPassword() %>
		</tr>
	<%} %>
	</table>
	
	<a href="./">戻る</a>
</body>
</html>