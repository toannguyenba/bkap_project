<%-- 
    Document   : login
    Created on : Nov 10, 2019, 4:03:09 PM
    Author     : bn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Login | E-Shopper</title>
        <jsp:include flush="true" page="linkCSS.jsp" />
    </head><!--/head-->

    <body>
        <jsp:include flush="true" page="header.jsp" />
        <% String m = (String) request.getAttribute("msg");
            if (m != null) {
        %>
        <div class="alert alert-success alert-dismissible" style="text-align: center;">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            <strong>${msg}</strong>
        </div>
        <% }%>

        <section id="form"><!--form-->
            <div class="container">
                <div class="row">
                    <div class="col-sm-4 col-sm-offset-1">
                        <div class="login-form"><!--login form-->
                            <h2>Đăng nhập</h2>
                            <spring:form action="login.htm" modelAttribute="acc" method="post">
                                <spring:input path="email" type="email" placeholder="Email"/>
                                <spring:input path="matKhau" type="password" placeholder="Password"/>
                                <input type="submit" value="Đăng Nhập"/>
                            </spring:form>
                        </div><!--/login form-->
                    </div>
                    <div class="col-sm-1">
                        <h2 class="or">Hoặc</h2>
                    </div>
                    <div class="col-sm-4">

                        <h2>Đăng Ký</h2>
                        <spring:form action="register.htm" modelAttribute="acc">
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
                                        <spring:input type="password" path="matKhau"/>
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
                                    </td>
                                    <td>
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
                                    <td><input class="btn btn-default" onclick="countDown()" type="submit" value="Đăng ký"/></td>
                                    <td><input class="btn btn-default" type="reset" value="Làm lại"/></td>
                                </tr>
                            </table>
                        </spring:form>

                    </div>
                </div>
            </div>
        </section><!--/form-->


        <jsp:include flush="true" page="footer.jsp" />



        <jsp:include flush="true" page="linkJS.jsp" />
        <script>
            function countDown() {
                var c = document.getElementsByClassName("count-down");
                setTimeout(function () {
                    c.style.display = none;
                }, 3000);
            }
        </script>
    </body>
</html>
