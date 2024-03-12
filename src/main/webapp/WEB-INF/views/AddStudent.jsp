<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <%@include file="./base.jsp"%>
</head>
<body>
<div class="container mt-3">

    <h1>Add Student </h1>
    <form action="insertStudent" method="post">

        <div class="row">
            <div class="col">
                <div class="form-group">
                    <label for="name">Name</label> <input type="text"
                                                          class="form-control" id="name" name="name"
                                                          placeholder="Enter Name">
                </div>
            </div>
            <div class="col">
                <div class="form-group">
                    <label for="address">Address</label> <input type="text"
                                                                        class="form-control" id="address" name="address"
                                                                        placeholder="Enter Address">
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col">
                <div class="form-group">
                    <label for="age">Age</label> <input
                        type="text" class="form-control" id="age"
                        name="age" placeholder="Enter Age">
                </div>
            </div>
            <div class="col">
                <div class="form-group">
                    <label for="grade">Grade</label> <input type="text"
                                                              class="form-control" id="grade" name="grade"
                                                              placeholder="Enter Grade">
                </div>
            </div>
        </div>



        <a href="${pageContext.request.contextPath }/"
           class="btn btn-warning"> Back </a>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>

</div>

</body>
</html>