<%-- 
    Document   : navBar
    Created on : 20-Sep-2021, 10:28:10 pm
    Author     : Pradeep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark background-blue">
  <a class="navbar-brand" href="#">Notes ++</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
          <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
          <a class="nav-link" href="allNotes.jsp">All Notes</a>
      </li>
      <li class="nav-item">
          <a class="nav-link" href="index.jsp">Add Notes</a>
      </li>
      
    </ul>
  </div>
</nav>
