<%-- 
    Document   : shop
    Created on : Nov 10, 2019, 4:17:19 PM
    Author     : bn
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Shop | E-Shopper</title>
        <jsp:include flush="true" page="linkCSS.jsp" />
    </head><!--/head-->

    <body>
        <jsp:include flush="true" page="header.jsp"/>

        <section id="advertisement">
            <div class="container">
                <img src="/ClothingStore/resources/images/shop/advertisement.jpg" alt="" />
            </div>
        </section>

        <section>
            <div class="container">
                <div class="row">
                    <div class="col-sm-3">
                        <jsp:include flush="true" page="menu.jsp"/>
                    </div>

                    <div class="col-sm-9 padding-right">
                        <div class="features_items"><!--features_items-->
                            <h2 class="title text-center">${title}</h2>
                            <c:forEach items="${listSP}" var="sp">
                                <div class="col-sm-4">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <a href="san-pham-chi-tiet.htm?id=${sp.sp.maSP}"><img style="width: 255.5px;height: 237.38px" src="/ClothingStore/resources/images/san-pham/${sp.sp.anh1}" alt="" /></a>
                                                <h3 style="color: #fe980f;"><fmt:formatNumber type="number" pattern="### ###" maxFractionDigits="0" value="${sp.giaMin}" />-<fmt:formatNumber type="number" pattern="######" maxFractionDigits="0" value="${sp.giaMax}" /> &#8363</h3>
                                                <p>${sp.sp.tenSP}</p>
                                                <a href="san-pham-chi-tiet.htm?id=${sp.sp.maSP}" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Chi tiết</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>    
                            </c:forEach>
                            <br>
                            <ul class="pagination">
                                <li class="active"><a href="">1</a></li>
                                <li><a href="">2</a></li>
                                <li><a href="">3</a></li>
                                <li><a href="">&raquo;</a></li>
                            </ul>
                        </div><!--features_items-->
                    </div>
                </div>
            </div>
        </section>

        <jsp:include flush="true" page="footer.jsp"/>



        <jsp:include flush="true" page="linkJS.jsp"/>
    </body>
</html>
