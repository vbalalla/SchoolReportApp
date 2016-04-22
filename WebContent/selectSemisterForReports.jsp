<%@page import="com.sun.xml.internal.txw2.Document"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 	
	String str = (String)request.getAttribute("data");
	String[] arr = str.split(",");
%>
<form action="tableData" method="get">
<select name="table">
<%	for(int i=0;i<arr.length;i++){ %>
  <option value="<%=arr[i]%>"><%=arr[i]%></option>
  <% } %>
</select>
<input type="submit" value="generate">
</form>

</body>
</html>