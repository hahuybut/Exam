<%--
  Created by IntelliJ IDEA.
  User: HA HUY BUT
  Date: 31/05/2023
  Time: 2:07 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<h1>Students list</h1>
<a href="students?action=new" class="button add-button">Add new Student</a>

<table>
    <tr>
        <td>ID</td>
        <td>Student Name</td>
        <td>Grade</td>
        <td>Scores</td>
    </tr>
    <c:forEach var="std" items="${studentList}">
        <tr>
            <td>${std.id}</td>
            <td>${std.name}</td>
            <td>${std.grade}</td>
            <td>${std.scores}</td>
            <td>
                <a class="button" href="students?action=edit&id=${std.id}">Edit</a>
                <a class="button" href="students?action=delete&id=${std.id}"
                   onclick="return confirm('Are you sure you want to delete this student?')"     >Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>