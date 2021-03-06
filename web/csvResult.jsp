<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Csv to database</title>
        <!-- background image may not work because is in the web-->
        <style>
            *{
                color:white;
                background-image: url(http://subtlepatterns.com/patterns/dark_embroidery.png);
            }
        </style>
    </head>
    <body>
        
        <%@ page import="ejd.*, csv.*, java.util.*, java.sql.*" %>
        
        
        <p>Parsed: ${parsedCount}</p>
        <p>Added: ${addedCount}</p>
        
        
        <table border="1">
            <tr>
                <th>#</th><th>First Name</th> <th>Last Name</th> <th>Company Name</th> 
                <th>Address</th><th>City</th> <th>Province</th> <th>Postal</th><th>Phone 1</th>
                <th>Phone 2</th><th>Email</th> <th>Web</th>
            </tr>

        <%-- foreach loop to print added persons --%>
        <c:forEach var="person" items="${added}" varStatus="status">
            <tr>
                <td>${status.count}</td>
                <td>${person.firstName}</td>
                <td>${person.lastName}</td>
                <td>${person.companyName}</td>
                <td>${person.address}</td>
                <td>${person.city}</td>
                <td>${person.province}</td>
                <td>${person.postal}</td>
                <td>${person.phone1}</td>
                <td>${person.phone2}</td>
                <td>${person.email}</td>
                <td>${person.web}</td>
            </tr>
        </c:forEach>
        </table>
    </body>
</html>