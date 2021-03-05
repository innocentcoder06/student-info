<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="java.util.*" %>
<%@page import="javax.servlet.*" %>
<%@page import="student_package.*" %>

<jsp:useBean id="student1" class="student_package.Student">
	<jsp:setProperty name="student1" property="studentID" value="137" />
	<jsp:setProperty name="student1" property="firstName" value="Nanthagopal" />
	<jsp:setProperty name="student1" property="lastName" value="S" />
	<jsp:setProperty name="student1" property="dateOfBirth" value="26-06-1998" />
</jsp:useBean>

<jsp:useBean id="student2" class="student_package.Student">
	<jsp:setProperty name="student2" property="studentID" value="125" />
	<jsp:setProperty name="student2" property="firstName" value="Harshnee" />
	<jsp:setProperty name="student2" property="lastName" value="R" />
	<jsp:setProperty name="student2" property="dateOfBirth" value="-" />
</jsp:useBean>

<jsp:useBean id="student3" class="student_package.Student">
	<jsp:setProperty name="student3" property="studentID" value="91" />
	<jsp:setProperty name="student3" property="firstName" value="Nithish" />
	<jsp:setProperty name="student3" property="lastName" value="S" />
	<jsp:setProperty name="student3" property="dateOfBirth" value="-" />
</jsp:useBean>

<jsp:useBean id="student4" class="student_package.Student">
	<jsp:setProperty name="student4" property="studentID" value="146" />
	<jsp:setProperty name="student4" property="firstName" value="Sudarshan" />
	<jsp:setProperty name="student4" property="lastName" value="P" />
	<jsp:setProperty name="student4" property="dateOfBirth" value="-" />
</jsp:useBean>

<jsp:useBean id="student5" class="student_package.Student">
	<jsp:setProperty name="student5" property="studentID" value="98" />
	<jsp:setProperty name="student5" property="firstName" value="Sowbagyaa" />
	<jsp:setProperty name="student5" property="lastName" value="B" />
	<jsp:setProperty name="student5" property="dateOfBirth" value="-" />
</jsp:useBean>

<%
	Map<Integer, Student> studentMap = new HashMap<>();
	studentMap.put(137, student1);
	studentMap.put(125, student2);
	studentMap.put(91, student3);
	studentMap.put(146, student4);
	studentMap.put(98, student5);
%>

	<%
		String search_val = request.getParameter("studentID");
		if (search_val != null) {
			searchStudent(Integer.parseInt(search_val), studentMap, response.getWriter());
		}
	%>
<html>
<head>
	<title>Student Info</title>
	<link rel="stylesheet" href="main.css" type="text/css">
</head>
<body>
	<form action="#" method="post">
		<input type="number" name="studentID" id="studentID" placeholder="Enter Student ID">
		<input type="submit" name="search" id="search" value="Find" />
	</form>
	<%!
		public void searchStudent(Integer search_val, Map<Integer, Student> studentMap, PrintWriter pw) {
			Student result_obj = studentMap.get(search_val);
			pw.print("<div class=\"table-div\">");
			pw.print("<span class=\"table-title\">Student Info</span>");
			pw.print("<table>");
			pw.print("<tr>");
			pw.print("<th>Student ID</th>");
			pw.print("<th>Firstname</th>");
			pw.print("<th>Lastname</th>");
			pw.print("<th>Date of Birth</th>");
			pw.print("</tr>");
			if (result_obj == null) {
				pw.print("<tr>");
				pw.print("<td colspan=\"4\">No Records Found</td>");
				pw.print("</tr>");
			} else {
				pw.print("<tr>");
				pw.print("<td>"+ result_obj.getStudentID() +"</td>");
				pw.print("<td>"+ result_obj.getFirstName() +"</td>");
				pw.print("<td>"+ result_obj.getLastName() +"</td>");
				pw.print("<td>"+ result_obj.getDateOfBirth() +"</td>");
				pw.print("</tr>");
			}
			pw.print("</table>");
			pw.print("</div>");
		}
	%>
</body>
</html>
