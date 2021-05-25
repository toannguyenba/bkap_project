<%-- 
    Document   : insertAccount
    Created on : Nov 15, 2019, 9:14:26 PM
    Author     : bn
--%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <spring:form action="InsertAccount.htm" modelAttribute="a">
                                <table>
                                    <tr>
                                        <td>Tên Đăng Nhập:</td>
                                        <td>
                                            <spring:input path="tenDN"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Mật khẩu:</td>
                                        <td>
                                            <spring:input path="matKhau"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Họ tên:</td>
                                        <td>
                                            <spring:input path="hoTen"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Giới tính:</td>
                                        <td>
                                            <spring:radiobutton  path="gioiTinh" value="true"/>Male
                                            <spring:radiobutton  path="gioiTinh" value="false"/>Female
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Ngày sinh:</td>
                                        <td>
                                            <spring:input type="date" path="ngaySinh"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Quê quán:</td>
                                        <td>
                                            <spring:input path="queQuan"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Email:</td>
                                        <td>
                                            <spring:input path="email"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Số điện thoại:</td>
                                        <td>
                                            <spring:input path="sdt"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <input type="submit" value="Insert"/>
                                        <input type="reset" value="Clear"/>
                                    </tr>
                                </table>
                                </spring:form>
    </body>
</html>
