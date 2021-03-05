<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="java.util.*" %>
<%@page import="student_package.*" %>

<jsp:useBean id="student1" class="student_package.Student">
	<jsp:setProperty name="student1" property="studentID" value="137" />
	<jsp:setProperty name="student1" property="firstName" value="Nanthagopal" />
	<jsp:setProperty name="student1" property="lastName" value="S" />
	<jsp:setProperty name="student1" property="dateOfBirth" value="26-06-1998" />
</jsp:useBean>

<jsp:useBean id="student2" class="student_package.Student">
	<jsp:setProperty name="student1" property="studentID" value="125" />
	<jsp:setProperty name="student1" property="firstName" value="Harshnee" />
	<jsp:setProperty name="student1" property="lastName" value="R" />
	<jsp:setProperty name="student1" property="dateOfBirth" value="-" />
</jsp:useBean>

<jsp:useBean id="student3" class="student_package.Student">
	<jsp:setProperty name="student1" property="studentID" value="91" />
	<jsp:setProperty name="student1" property="firstName" value="Nithish" />
	<jsp:setProperty name="student1" property="lastName" value="S" />
	<jsp:setProperty name="student1" property="dateOfBirth" value="-" />
</jsp:useBean>

<jsp:useBean id="student4" class="student_package.Student">
	<jsp:setProperty name="student1" property="studentID" value="146" />
	<jsp:setProperty name="student1" property="firstName" value="Sudarshan" />
	<jsp:setProperty name="student1" property="lastName" value="P" />
	<jsp:setProperty name="student1" property="dateOfBirth" value="-" />
</jsp:useBean>

<jsp:useBean id="student5" class="student_package.Student">
	<jsp:setProperty name="student1" property="studentID" value="98" />
	<jsp:setProperty name="student1" property="firstName" value="Sowbagyaa" />
	<jsp:setProperty name="student1" property="lastName" value="B" />
	<jsp:setProperty name="student1" property="dateOfBirth" value="-" />
</jsp:useBean>

<%
	Map<Integer, Student> studentMap = new HashMap<>();
	studentMap.put(137, student1);
	studentMap.put(125, student2);
	studentMap.put(91, student3);
	studentMap.put(146, student4);
	studentMap.put(98, student5);
%>