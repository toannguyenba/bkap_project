<%-- 
    Document   : home-admin
    Created on : Nov 13, 2019, 5:25:49 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>E-Shop</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- favicon
                    ============================================ -->
        <jsp:include page="linkCss.jsp" flush="true"/>
        <style>
            .footer-copyright-area{
                transform: translate(0px,300px);
            }
        </style>
    </head>

    <body>

        <jsp:include page="menu.jsp" flush="true"/>
        <!-- Start Welcome area -->
        <div class="all-content-wrapper">
            <jsp:include page="header.jsp" flush="true"/>

            <!--
                PAGE CONTENT             
            -->
            <br />
            <h3 style="text-align: center">Tháng này</h3>
            <div class="income-order-visit-user-area mg-t-15">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                            <div class="income-dashone-total reso-mg-b-30">
                                <div class="income-dashone-pro">
                                    <div class="income-rate-total">
                                        <div class="price-adminpro-rate">
                                            <h3><span>$</span><span class="counter">7500</span></h3>
                                        </div>
                                    </div>
                                    <div class="income-range">
                                        <p>Tổng thu nhập</p>
                                        <!-- có thể cho phần trăm chỉ tiêu tháng !-->
                                        <span class="income-percentange bg-green"><span class="counter">95</span>% <i class="fa fa-bolt"></i>
                                        </span>
                                    </div>
                                    <div class="clear"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                            <div class="income-dashone-total reso-mg-b-30">
                                <div class="income-dashone-pro">
                                    <div class="income-rate-total">
                                        <div class="price-adminpro-rate">
                                            <h3><span class="counter">6400</span></h3>
                                        </div>
                                    </div>
                                    <div class="income-range order-cl">
                                        <p>Tổng số đơn</p>
                                        <span class="income-percentange bg-red"><span class="counter">65</span>% <i class="fa fa-level-up"></i>
                                        </span>
                                    </div>
                                    <div class="clear"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                            <div class="income-dashone-total reso-mg-b-30 res-mg-t-30">
                                <div class="income-dashone-pro">
                                    <div class="income-rate-total">
                                        <div class="price-adminpro-rate">
                                            <h3><span class="counter">4500</span></h3>
                                        </div>
                                    </div>
                                    <div class="income-range visitor-cl">
                                        <p>Đơn mới</p>
                                        <span class="income-percentange bg-blue"><span class="counter">75</span>% <i class="fa fa-level-up"></i>
                                        </span>
                                    </div>
                                    <div class="clear"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                            <div class="income-dashone-total res-mg-t-30">
                                <div class="income-dashone-pro">
                                    <div class="income-rate-total">
                                        <div class="price-adminpro-rate">
                                            <h3><span class="counter">235400</span></h3>
                                        </div>
                                    </div>
                                    <div class="income-range low-value-cl">
                                        <p>Tài khoản mới</p>
                                        <span class="income-percentange bg-purple"><span class="counter">35</span>% <i class="fa fa-level-down"></i>
                                        </span>
                                    </div>
                                    <div class="clear"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <br />
            <hr />
            <h3 style="text-align: center">Tháng trước</h3>
            <!-- income order visit user End -->
            <div class="income-order-visit-user-area mg-t-15">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                            <div class="income-dashone-total reso-mg-b-30">
                                <div class="income-dashone-pro">
                                    <div class="income-rate-total">
                                        <div class="price-adminpro-rate">
                                            <h3><span>$</span><span class="counter">7500</span></h3>
                                        </div>
                                    </div>
                                    <div class="income-range">
                                        <p>Tổng thu nhập tháng</p>
                                        <!-- có thể cho phần trăm chỉ tiêu tháng !-->
                                        <span class="income-percentange bg-green"><span class="counter">95</span>% <i class="fa fa-bolt"></i>
                                        </span>
                                    </div>
                                    <div class="clear"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                            <div class="income-dashone-total reso-mg-b-30">
                                <div class="income-dashone-pro">
                                    <div class="income-rate-total">
                                        <div class="price-adminpro-rate">
                                            <h3><span class="counter">6400</span></h3>
                                        </div>
                                    </div>
                                    <div class="income-range order-cl">
                                        <p>Tổng số đơn</p>
                                        <span class="income-percentange bg-red"><span class="counter">65</span>% <i class="fa fa-level-up"></i>
                                        </span>
                                    </div>
                                    <div class="clear"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                            <div class="income-dashone-total reso-mg-b-30 res-mg-t-30">
                                <div class="income-dashone-pro">
                                    <div class="income-rate-total">
                                        <div class="price-adminpro-rate">
                                            <h3><span class="counter">4500</span></h3>
                                        </div>
                                    </div>
                                    <div class="income-range visitor-cl">
                                        <p>Đơn mới</p>
                                        <span class="income-percentange bg-blue"><span class="counter">75</span>% <i class="fa fa-level-up"></i>
                                        </span>
                                    </div>
                                    <div class="clear"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                            <div class="income-dashone-total res-mg-t-30">
                                <div class="income-dashone-pro">
                                    <div class="income-rate-total">
                                        <div class="price-adminpro-rate">
                                            <h3><span class="counter">235400</span></h3>
                                        </div>
                                    </div>
                                    <div class="income-range low-value-cl">
                                        <p>Tài khoản mới</p>
                                        <span class="income-percentange bg-purple"><span class="counter">35</span>% <i class="fa fa-level-down"></i>
                                        </span>
                                    </div>
                                    <div class="clear"></div>
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
