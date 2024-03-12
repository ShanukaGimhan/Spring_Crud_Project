<html>
<head>
    <title>Spring Crud Project Main</title>


    <%--==================================================--%>

    <style>
        /* Style the navigation bar */
        .navbar {
            background-color: #333;
            overflow: hidden;
        }

        /* Style the links inside the navigation bar */
        .navbar a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
        }

        /* Change the color of links on hover */
        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }

        .center {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }

        .center button {
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .asd{
            color: white;
            font-weight: bold;
        }

    </style>

    <%--===========================================================--%>

</head>

<body>

<div class="navbar">
    <a href="#home">Home</a>
    <a href="allStudent">All Student</a>


</div>

<div class="container mt-3 center">


  <button>  <a href="allStudent" class="btn btn-primary asd">  Student Management System </a></button>

</div>
</body>
</html>