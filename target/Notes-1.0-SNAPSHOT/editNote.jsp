<%-- 
    Document   : editNote
    Created on : 21-Sep-2021, 1:33:59 pm
    Author     : Pradeep
--%>

<%@page import="com.entities.Note"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>edit Note</title>

        <!--bootsrap css-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

        <!--my-css-->
        <link href="myCss/myCss.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container mt-3">
            <%@include file="navBar.jsp"%>
            <h1>Edit your note</h1>
            <br>

            <%
                int noteId = Integer.parseInt(request.getParameter("noteId").trim());
                Session s = FactoryProvider.getFactory().openSession();
                Note note = (Note) s.get(Note.class, noteId);
            %>


            <form action="UpdateNote" method="post">

                <input value="<%=note.getId()%>" name="noteId" type="hidden" />

                <div class="form-group">
                    <label for="title">Note title</label> <input name="updatedtitle" required
                                                                 type="text" class="form-control" id="title"
                                                                 placeholder="Enter here"
                                                                 value="<%=note.getTitle()%>" />

                </div>


                <div class="form-group">
                    <label for="content">Note Content</label>
                    <textarea name="updatedcontent" required id="content"
                              placeholder="Enter your content here" class="form-control"
                              style="height: 300px;"><%=note.getContent()%>
                    </textarea>


                </div>

                <div class="container text-center">

                    <button type="submit" class="btn btn-success">Save your
                        note</button>
                </div>

            </form>


            <!--java-script-->
            <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>
