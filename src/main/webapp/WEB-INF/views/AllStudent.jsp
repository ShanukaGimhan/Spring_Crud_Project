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

    <h1>Add Student Form</h1>
    <a href="addStudent" class="btn btn-primary"> Add Student </a>
    <div class="row">

        <table class="table table-hover">
            <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Name</th>
                <th scope="col">Address</th>
                <th scope="col">Age</th>
                <th scope="col">Grade</th>

            </tr>
            </thead>
            <tbody>
            <c:forEach var="student" items="${student}">
                <tr>
                    <td class="table-plus">${student.id}</td>
                    <td>${student.name}</td>
                    <td>${student.address}</td>
                    <td>${student.age}</td>
                    <td>${student.grade}</td>

                    <td><a href="editStudent/${student.id}" class="btn btn-warning">
                        Edit </a></td>
                    <td><a href="deleteStudent/${student.id}"
                           class="btn btn-danger"> Delete </a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

</body>
</html>