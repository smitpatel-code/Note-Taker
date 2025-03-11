
<%@page import="com.helper.*, org.hibernate.*,com.entities.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update: Note Taker</title>
<%@include file ="all_js_css.jsp" %>
</head>
<body>
 <div class="container">
   	<%@include file="NavBar.jsp" %>
    <br>
		<h1>Edit your note</h1>
		<br>
   		<%
   		int noteId=Integer.parseInt(request.getParameter("note_id".trim()));
   	 Session s = FactoryProvider.getFactory().openSession();
    
     
     Note note = s.get(Note.class, noteId);
     
     
     
   		
   		%>
   		<form action="UpdateServlet" method="post">
   		<input value="<%=note.getId() %>" name="noteId" type="hidden"/>
  <div class="form-group">
    <label for="title">Note Title</label>
    <input name="title" required type="text" class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter Title here" value="<%=note.getTitle()%>">
    
  </div>
  <div class="form-group">
    <label for="content">Note Content</label>
   	<textarea name="content" required class="form-control" id="content" style="height:300px" placeholder="Enter Content here"><%=note.getContent() %></textarea>
  </div>
 
  <div class="container text-center">
  
  <button type="submit" class="btn btn-success">Update</button>
  </div>
</form>
   
   </div>
</body>
</html>