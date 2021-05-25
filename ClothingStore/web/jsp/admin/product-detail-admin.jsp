<%-- 
    Document   : product-detail-admin
    Created on : Nov 18, 2019, 1:22:14 PM
    Author     : Admin
--%>

<%@taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Sản phẩm chi tiết</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- favicon
                    ============================================ -->
        <jsp:include page="linkCss.jsp" flush="true"/>
    </head>

    <body>
        <!--[if lt IE 8]>
                <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
            <![endif]-->

        <jsp:include page="menu.jsp" flush="true"/>
        <!-- Start Welcome area -->
        <div class="all-content-wrapper">
            <jsp:include page="header.jsp" flush="true"/>

            <!--
                PAGE CONTENT  
            -->
            <div class="single-product-tab-area mg-t-15 mg-b-30">
                <div class="container-fluid">
                    <div class="row">
                        <!--Hiển thị ảnh-->
                        <div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
                            <div id="myTabContent1" class="tab-content">
                                <div class="product-tab-list tab-pane fade active in" id="single-tab1">
                                    <img style="width: 446.66px; height: 450px;" src="/ClothingStore/resources/images/san-pham/${sp.maSP.anh1}" alt="" />
                                </div>
                                <div class="product-tab-list tab-pane fade" id="single-tab2">
                                    <img style="width: 446.66px; height: 450px;" src="/ClothingStore/resources/images/san-pham/${sp.maSP.anh2}" alt="" />
                                </div>
                                <div class="product-tab-list tab-pane fade" id="single-tab3">
                                    <img style="width: 446.66px; height: 450px;" src="/ClothingStore/resources/images/san-pham/${sp.maSP.anh3}" alt="" />
                                </div>
                                <div class="product-tab-list tab-pane fade" id="single-tab4">
                                    <img style="width: 446.66px; height: 450px;" src="/ClothingStore/resources/images/san-pham/${sp.maSP.anh1}" alt="" />
                                </div>
                                <div class="product-tab-list tab-pane fade" id="single-tab5">
                                    <img style="width: 446.66px; height: 450px;" src="img/product/bg-2.jpg" alt="" />
                                </div>
                            </div>
                            <ul id="single-product-tab">
                                <li class="active">
                                    <a href="#single-tab1"><img style="width: 102.16px; height: 102.16px;" src="/ClothingStore/resources/images/san-pham/${sp.maSP.anh1}" alt="" /></a>
                                </li>
                                <li>
                                    <a href="#single-tab2"><img style="width: 102.16px; height: 102.16px;" src="/ClothingStore/resources/images/san-pham/${sp.maSP.anh2}" alt="" /></a>
                                </li>
                                <li>
                                    <a href="#single-tab3"><img style="width: 102.16px; height: 102.16px;" src="/ClothingStore/resources/images/san-pham/${sp.maSP.anh3}" alt="" /></a>
                                </li>
                                <li>
                                    <a href="#single-tab4"><img style="width: 102.16px; height: 102.16px;" src="/ClothingStore/resources/images/san-pham/${sp.maSP.anh1}" alt="" /></a>
                                </li>
                            </ul>
                        </div>
                        <!--Hiển thị thông tin name, size, color...-->
                        <div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
                            <div class="single-product-details res-pro-tb">
                                <h1>${sp.maSP.tenSP}</h1>
                                <!--Rate-->
                                <span class="single-pro-star"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></span>
                                <!--Giá-->
                                <div class="single-pro-price">
                                    <span class="single-regular">${sp.giaGoc - sp.giaGoc*sp.giaKM/100}&#8363</span><span class="single-old"><del>${sp.giaGoc}&#8363</del></span>
                                </div>
                                <!--Nhà sản xuất-->
                                <div>
                                    <span style="color: #333333; font: 14px sans-serif; font-weight: bolder;">Nhà sản xuất: </span><span style="color: #606060;">${sp.maSP.maNSX.tenNSX}</span>
                                </div>
                                <div class="single-pro-size">
                                    <h6>Size</h6>
                                    <span>${sp.maKichThuoc.maKichThuoc}</span>
                                </div>
                                <div class="color-quality-pro">
                                    <div class="color-quality-details">
                                        <h5>Color</h5>
                                        ${sp.maMauSac.tenMauSac}
                                    </div>
                                    <div class="color-quality">
                                        <h4>Số lượng</h4>
                                        <div class="quantity">
                                            <div class="pro-quantity-changer">
                                                <input type="text" readonly="true" value="${sp.soLuong}" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="clear"></div>
                                    <div class="single-pro-button">                                        
                                        <div class="pro-viwer">
                                            Cập nhật <a href="cap-nhat-spct.htm?id=${sp.maSPCT}"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>></a>
                                        </div>
                                    </div>
                                    <div class="clear"></div>
                                    <div class="single-social-area">
                                        <h3>share this on</h3>
                                        <a href="#"><i class="fa fa-facebook"></i></a>
                                        <a href="#"><i class="fa fa-google-plus"></i></a>
                                        <a href="#"><i class="fa fa-feed"></i></a>
                                        <a href="#"><i class="fa fa-twitter"></i></a>
                                        <a href="#"><i class="fa fa-linkedin"></i></a>
                                    </div>
                                </div>
                                <div class="single-pro-cn">
                                    <h3>OVERVIEW</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                                        consequat. Duis aute irure dolor in reprehenderit in voluptate </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Single pro tab End-->
            <!-- Single pro tab review Start-->
            <div class="single-pro-review-area mt-t-30 mg-b-15">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <ul id="myTab" class="tab-review-design">
                                <li class="active"><a href="#description">description</a></li>
                                <li><a href="#reviews"><span><i class="fa fa-star"></i><i class="fa fa-star"></i></span> reviews (1) <span><i class="fa fa-star"></i><i class="fa fa-star"></i></span></a></li>
                                <li><a href="#INFORMATION">INFORMATION</a></li>
                            </ul>
                            <div id="myTabContent" class="tab-content">
                                <div class="product-tab-list product-details-ect tab-pane fade active in" id="description">
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="review-content-section">
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
                                                    ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt
                                                    mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto
                                                    beatae vitae dicta sunt explicabo.</p>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco labo nisi ut aliquip ex
                                                    ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ut labore et dolore magna aliqua. Ut enim ad , quis nostrud exercitation ullamco
                                                    laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-tab-list tab-pane fade" id="reviews">
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="review-content-section">
                                                <div class="review-content-section">
                                                    <div class="card-block">
                                                        <div class="text-muted f-w-400">
                                                            <p>No reviews yet.</p>
                                                        </div>
                                                        <div class="m-t-10">
                                                            <div class="txt-primary f-18 f-w-600">
                                                                <p>Your Rating</p>
                                                            </div>
                                                            <div class="stars stars-example-css detail-stars">
                                                                <div class="review-rating">
                                                                    <fieldset class="rating">
                                                                        <input type="radio" id="star5" name="rating" value="5">
                                                                        <label class="full" for="star5"></label>
                                                                        <input type="radio" id="star4half" name="rating" value="4 and a half">
                                                                        <label class="half" for="star4half"></label>
                                                                        <input type="radio" id="star4" name="rating" value="4">
                                                                        <label class="full" for="star4"></label>
                                                                        <input type="radio" id="star3half" name="rating" value="3 and a half">
                                                                        <label class="half" for="star3half"></label>
                                                                        <input type="radio" id="star3" name="rating" value="3">
                                                                        <label class="full" for="star3"></label>
                                                                        <input type="radio" id="star2half" name="rating" value="2 and a half">
                                                                        <label class="half" for="star2half"></label>
                                                                        <input type="radio" id="star2" name="rating" value="2">
                                                                        <label class="full" for="star2"></label>
                                                                        <input type="radio" id="star1half" name="rating" value="1 and a half">
                                                                        <label class="half" for="star1half"></label>
                                                                        <input type="radio" id="star1" name="rating" value="1">
                                                                        <label class="full" for="star1"></label>
                                                                        <input type="radio" id="starhalf" name="rating" value="half">
                                                                        <label class="half" for="starhalf"></label>
                                                                    </fieldset>
                                                                </div>
                                                                <div class="clear"></div>
                                                            </div>
                                                        </div>
                                                        <div class="input-group mg-b-15 mg-t-15">
                                                            <span class="input-group-addon"><i class="fa fa-user" aria-hidden="true"></i></span>
                                                            <input type="text" class="form-control" placeholder="User Name">
                                                        </div>
                                                        <div class="input-group mg-b-15">
                                                            <span class="input-group-addon"><i class="fa fa-user" aria-hidden="true"></i></span>
                                                            <input type="text" class="form-control" placeholder="Last Name">
                                                        </div>
                                                        <div class="input-group mg-b-15">
                                                            <span class="input-group-addon"><i class="fa fa-envelope-o" aria-hidden="true"></i></span>
                                                            <input type="text" class="form-control" placeholder="Email">
                                                        </div>
                                                        <div class="form-group review-pro-edt">
                                                            <button type="submit" class="btn btn-primary waves-effect waves-light">Submit
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-tab-list tab-pane fade" id="INFORMATION">
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="review-content-section">
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
                                                    ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt
                                                    mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto
                                                    beatae vitae dicta sunt explicabo.</p>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco labo nisi ut aliquip ex
                                                    ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ut labore et dolore magna aliqua. Ut enim ad , quis nostrud exercitation ullamco
                                                    laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <jsp:include page="footer.jsp" flush="true"/>
        </div>

        <!-- jquery
                    ============================================ -->
        <jsp:include page="linkJquery.jsp" flush="true"/>

    </body>

</html>
