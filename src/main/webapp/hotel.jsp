<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" import="java.util.*" contentType="text/html;charset=GBK" pageEncoding="GBK"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Adventure - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <jsp:include page="link.jsp"/>

</head>
<body>
<!--导航栏 -->
<jsp:include page="nav.jsp"/>
<!-- END nav -->

<div class="hero-wrap js-fullheight" style="background-image: url('<%=request.getContextPath()%>/images/bg_1.jpg');">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
            <div class="col-md-9 text-center ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
                <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="index.html">Home</a></span> <span>Hotel</span></p>
                <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Hotels</h1>
            </div>
        </div>
    </div>
</div>

<section class="ftco-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 sidebar order-md-last ftco-animate">
                <div class="sidebar-wrap ftco-animate">
                    <h3 class="heading mb-4">Find Hotel</h3>

                    <form accept-charset="UTF-8"  action="${pageContext.request.contextPath}/hotle/searchHotelByLikeSetSESSION.do" method="post">
                        <div class="fields">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Country" id="country" name="hotelCountry">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="City" id="city" name="hotelCity">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="最低价格:  $" id="pricemin" name="minPriceString">
                                <input type="text" class="form-control" placeholder="最高价格:  $" id="pricemax" name="maxPriceString">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="好评星级" id="comment" name="hotelComment2">
                            </div>
                            <div class="form-group">
                                <input type="submit" value="Search" class="btn btn-primary py-3 px-5" >
                            </div>
                        </div>
                    </form>
                </div>

            </div><!-- END-->
            <div class="col-lg-9">
                <div class="row">
                    <c:forEach var="hotel" items="${pageInfo.lists}">
                        <div class="col-sm col-md-6 col-lg-4 ftco-animate">
                            <div class="destination">
                                <a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(<%=request.getContextPath()%>/${hotel.hotelImg});">
                                    <div class="icon d-flex justify-content-center align-items-center">
                                        <span class="icon-link"></span>
                                    </div>
                                </a>
                                <div class="text p-3">
                                    <div class="d-flex">
                                        <div class="one">
                                            <h3><a href="#">${hotel.hotelName}</a></h3>
                                            <p class="rate">
                                                <c:forEach begin="1" end="${hotel.hotelComment}">
                                                    <i class="icon-star"></i>
                                                </c:forEach>
                                                <c:forEach begin="1" end="${5-hotel.hotelComment}">
                                                    <i class="icon-star-o"></i>
                                                </c:forEach>
                                                <span>${hotel.hotelComment}Rating</span>
                                            </p>
                                        </div>
                                        <div class="two">
                                            <span class="price per-price">$<c:out value="${hotel.hotelAvgprice}"/><br><small>/每晚</small></span>
                                        </div>
                                    </div>
                                    <p>${hotel.hotelSummary}</p>
                                    <hr>
                                    <p class="bottom-area d-flex">
                                        <span><i class="icon-map-o"></i> ${hotel.hotelCity}</span>
                                        <span class="ml-auto"><a href="${pageContext.request.contextPath}/hotle/hotelSingle.do?hotelId=${hotel.hotelId}">去订购</a></span>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    <!--  酒店分页结束-->
                </div>

                <div class="row mt-5">
                    <div class="col text-center">
                        <div class="block-27">
                            <ul>

                                <!--    酒店分页底部分页链接      -->

                                <li><a href="${pageContext.request.contextPath}/hotle/searchHotelView.do?currentPage=1">首页</a></li>

                                <c:if test="${pageInfo.currentPage !=1}">
                                    <li><a href="${pageContext.request.contextPath}/hotle/searchHotelView.do?currentPage=${pageInfo.currentPage-1}">&lt;</a></li>
                                </c:if>
                                <c:if test="${pageInfo.currentPage ==1}">
                                    <li><a href="${pageContext.request.contextPath}/hotle/searchHotelView.do?currentPage=1" >&lt;</a></li>
                                </c:if>

                                <c:forEach begin="1" end="${pageInfo.totalPage}" var="i">
                                    <li><a href="${pageContext.request.contextPath}/hotle/searchHotelView.do?currentPage=${i}">${i}</a></li>
                                </c:forEach>


                                <c:if test="${pageInfo.currentPage !=pageInfo.totalPage}">
                                    <li><a href="${pageContext.request.contextPath}/hotle/searchHotelView.do?currentPage=${pageInfo.currentPage+1}">&gt;</a></li>
                                </c:if>
                                <c:if test="${pageInfo.currentPage == pageInfo.totalPage}">
                                    <li><a href="${pageContext.request.contextPath}/hotle/searchHotelView.do?currentPage=${pageInfo.totalPage}">&gt;</a></li>
                                </c:if>
                                <li><a href="${pageContext.request.contextPath}/hotle/searchHotelView.do?currentPage=${pageInfo.totalPage}" aria-label="Next">尾页</a></li>

                             </ul>
                         </div>
                     </div>
                 </div>
             </div> <!-- .col-md-8 -->
        </div>
    </div>
</section> <!-- .section -->

<section class="ftco-section-parallax">
    <div class="parallax-img d-flex align-items-center">
        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
                    <h2>Subcribe to our Newsletter</h2>
                    <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in</p>
                    <div class="row d-flex justify-content-center mt-5">
                        <div class="col-md-8">
                            <form action="#" class="subscribe-form">
                                <div class="form-group d-flex">
                                    <input type="text" class="form-control" placeholder="Enter email address">
                                    <input type="submit" value="Subscribe" class="submit px-3">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- 页脚 -->
<jsp:include page="footer.jsp"/>
<!-- loader -->
<div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>
<!--  登录注册的界面、js脚本和一些其他js脚本 -->
<jsp:include page="script.jsp"/>
<jsp:include page="LoginRegister.jsp"/>
</body>
</html>