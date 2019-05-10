<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String dirPath = application.getRealPath("/WEB-INF/movie");
 	//out.println(dirPath); 
	File dir = new File(dirPath);
	String fileNames[] = dir.list();
	
/* 	for(int i=0; i< fileNames.length; i++){
		out.println(fileNames[i] + "<br>");
	} */

%>


<h4>영화 목록</h4>

<% 
	for(String fileName : fileNames) { %>
		<a href="movieReader.jsp?NAME=<%= fileName %>"><%= fileName %></a><br>
<%	}
%>