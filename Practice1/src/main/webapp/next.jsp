<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Details into table</title>
</head>
<body>
<%
try{
	int a=Integer.parseInt(request.getParameter("id"));
	int b=Integer.parseInt(request.getParameter("price"));
	String c=request.getParameter("name");
	out.println(a);
	out.println(b);
	out.println(c);
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/damini","root","1234");
	String sql="insert into book values("+a+","+b+",'"+c+"')";
	Statement st=con.createStatement();
	st.executeUpdate(sql);
	out.println("<h2>DataInserted</h2>");
}catch(Exception e){
	System.out.println(e);
}
%>
</body>
</html>