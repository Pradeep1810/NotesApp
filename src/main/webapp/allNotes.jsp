<%-- 
    Document   : allNotes
    Created on : 20-Sep-2021, 11:19:21 pm
    Author     : Pradeep
--%>

<%@page import="org.hibernate.Query"%>
<%@page import="java.util.List"%>
<%@page import="com.entities.Note"%>

<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <!--bootsrap css-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

        <!--my-css-->
        <link href="myCss/myCss.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>

        <div class="container mt-3">
            <%@include file="navBar.jsp" %>
            <br>

            <div  class="row">
                <div class="col-12">

                    <%
                        Session s = FactoryProvider.getFactory().openSession();
                        String query = "from Note n order by n.id Desc";
                        Query q = s.createQuery(query);
                        List<Note> list = q.list();
                        for (Note n : list) {
                    %>

                    <div class="card mt-3" >
                        <img class="card-img-top m-4 mx-auto" style="max-width:100px;" src="images/notesImage.png" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title"><%= n.getTitle()%></h5>
                            <hr>
                            <p class="card-text">
                                <%= n.getContent()%>
                            </p>
                            <p ><b class="text-primary"><%= n.getAddedDate()%></b></p>
                            <div class="text-center">
                                <a href="editNote.jsp?noteId=<%= n.getId() %>" class="btn btn-primary">Update</a>
                                <a href="DeleteNoteServlet?note_id=<%= n.getId()%>" class="btn btn-danger">Delete Note</a>
                            </div>
                        </div>
                    </div>
                    <% }
                        s.close();
                    %>    
                </div>

            </div>


        </div>

        <!--java-script-->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>
