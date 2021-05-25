<%-- 
    Document   : trangchu
    Created on : Nov 15, 2019, 3:09:38 PM
    Author     : bn
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <h1>List</h1>
        <table>
               <tr>
                    <th>Tên đăng nhập</th>
                    <th>Mật khẩu</th>
                </tr>
                <c:forEach items="${list}" var="a" varStatus="itr">
                    <tr>
                        <td>${a.tenDN}</td>
                        <td>${a.matKhau}</td>
                    </tr>
                </c:forEach>
            </table>
    </center>
    </body>
</html>
