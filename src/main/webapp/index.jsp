<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Movies</title>
</head>
<body>
<table>
    <thead>
    <tr>
        <td>Title</td>
        <td>Price</td>
        <td>Year</td>
        <td>Director</td>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${movieList}" var="movie">
        <tr>
            <td>${movie.title}</td>
            <td>${movie.price}</td>
            <td>${movie.year}</td>
            <c:forEach items="${movie.directors}" var="dir">
                <td>${dir.name} ${dir.surname}</td>
            </c:forEach>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>