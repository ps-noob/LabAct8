<%@ page import="pankaj.LabAct8.Test_sorting" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Lab Activity 8</title>
</head>
<body>
<h1><%= "Sorted Arrays" %></h1>
<br/>
<%
    Test_sorting t = new Test_sorting();
    t.array = request.getParameter("names").split(",");
%>
<table border="1px">
    <tr>
        <td>Ascending</td>
        <%for(String s: t.ascending(t.array)){%>
        <td><%=s%></td>
        <%}%>
    </tr>
    <tr>
        <td>Descending</td>
        <%for(String s: t.descending(t.array)){%>
        <td><%=s%></td>
        <%}%>
    </tr>
</table>
</body>
</html>