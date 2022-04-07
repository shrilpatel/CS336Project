<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<!--Import some libraries that have classes that we need -->
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
	try {
		
		//Get the database connection
		ApplicationDB db = new ApplicationDB();	
		Connection con = db.getConnection();

		//Create a SQL statement
		Statement stmt = con.createStatement();

		//Get parameters from the HTML form at the index.jsp
		String email = request.getParameter("email");
		String password = request.getParameter("password");//Make an insert statement for the Sells table:
		String insert = "INSERT INTO login(email)"
				+ "VALUES (?)";
		//Create a Prepared SQL statement allowing you to introduce the parameters of the query
		PreparedStatement ps = con.prepareStatement(insert);

		//Add parameters of the query. Start with 1, the 0-parameter is the INSERT statement itself
		ps.setString(1, email);
		ps.executeUpdate();

		
		//Make an insert statement for the Sells table:
		insert = "INSERT INTO login(password)"
				+ "VALUES (?)";
		//Create a Prepared SQL statement allowing you to introduce the parameters of the query
		ps = con.prepareStatement(insert);
		//Add parameters of the query. Start with 1, the 0-parameter is the INSERT statement itself		
		ps.setString(1, password);
		ps.executeUpdate();

	
		
		//Close the connection. Don't forget to do it, otherwise you're keeping the resources of the server allocated.
		con.close();
		out.print("insert succeeded");
	
	} catch (Exception ex) {
		out.print(ex);
		out.print("insert failed");
	}
	%>
	

</body>
</html>