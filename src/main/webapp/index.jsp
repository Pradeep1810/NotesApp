<%-- 
    Document   : index
    Created on : 20-Sep-2021, 10:19:58 pm
    Author     : Pradeep
--%>

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

            <!--add-notes-form-->
            <form action="SaveNotesServlet" method="post">
                <div class="form-group mt-2">
                    <label for="notesTitle">Notes Title</label>
                    <input 
                        type="text" 
                        class="form-control" 
                           name="notesTitle" required 
                           placeholder="Enter Notes Title">
                   
                </div>
                <div class="form-group">
                   
                    <label for="notesContent">Note Content</label>
				<textarea 
				name="notesContent"
				required 
				id="content"
				placeholder="Enter your content here"				 
				class="form-control" 
				style="height: 300px;"		
					></textarea>
                </div>
                <div class="text-center">
                <button type="submit" class="btn btn-primary">Submit</button>
                </div>
            </form>

        </div>


        <!--java-script-->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>
