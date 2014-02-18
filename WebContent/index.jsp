<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <html> <head>
<title>Session Example: session.jsp</title></head>
<body> Tomcat <%= request.getServerName() %>: Session id <STRONG>

<%= session.getId()%>
</STRONG> <BR> <% if ( session.isNew() )
 {
	session.setAttribute("arg",new String("This is in existing session"));
	
	%>    This is a new session ! <BR> 
<%} else { 
	String arg=(String)session.getAttribute("arg");
%>   

 This is an existing session<BR> 
 
 Session Value: <%= (String)session.getAttribute("arg") %>
 <%}%>
  </body> </html>
