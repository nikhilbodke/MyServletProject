<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
@@ -10,26 +10,32 @@
</head>
<body>

	<% 
List<String> friends=new ArrayList<String>();
friends.add("Dharamji");
friends.add("Hema");
friends.add("Sunny Deol");
friends.add("Bobby Deol");
friends.add("Isha Deol");
%>
	<%
	List<String> friends = new ArrayList<String>();
	friends.add("Dharamji");
	friends.add("Hema");
	friends.add("Sunny Deol");
	friends.add("Bobby Deol");
	friends.add("Isha Deol");
	%>


<% request.setAttribute("buddies", friends); %>
	<%
	request.setAttribute("buddies", friends);
	%>

<!--   OR   -->
<% pageContext.setAttribute("buddies", friends,pageContext.REQUEST_SCOPE); %>
	<!--   OR   -->
	<%
	pageContext.setAttribute("buddies", friends, pageContext.REQUEST_SCOPE);
	%>


<%= request.getAttribute("buddies") %>
	<%=request.getAttribute("buddies")%>


<% request.getRequestDispatcher("/two.jsp").forward(request, response); %>
	<%
	request.getRequestDispatcher("/two.jsp").forward(request, response);
	%>

</body>
</html>