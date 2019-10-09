<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<jsp:include page="nav.jsp"/>
<!-- END nav -->

<div class="hero-wrap js-fullheight" style="background-image: url('${pageContext.request.contextPath}/images/bg_1.jpg');">
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

<section class="ftco-section ftco-degree-bg">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 sidebar">
                <div class="sidebar-wrap ftco-animate">
                    <h3 class="heading mb-4">Find Hotel</h3>
                    <form action="#">
                        <div class="fields">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Destination, City">
                            </div>
                            <div class="form-group">
                                <div class="select-wrap one-third">
                                    <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                                    <select name="" id="" class="form-control" placeholder="Keyword search">
                                        <option value="">Select Location</option>
                                        <option value="">San Francisco USA</option>
                                        <option value="">Berlin Germany</option>
                                        <option value="">Lodon United Kingdom</option>
                                        <option value="">Paris Italy</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <input type="text" id="checkin_date" class="form-control" placeholder="Date from">
                            </div>
                            <div class="form-group">
                                <input type="text" id="checkin_date" class="form-control" placeholder="Date to">
                            </div>
                            <div class="form-group">
                                <div class="range-slider">
		              		<span>
										    <input type="number" value="25000" min="0" max="120000"/>	-
										    <input type="number" value="50000" min="0" max="120000"/>
										  </span>
                                    <input value="1000" min="0" max="120000" step="500" type="range"/>
                                    <input value="50000" min="0" max="120000" step="500" type="range"/>
                                    </svg>
                                </div>
                            </div>
                            <div class="form-group">
                                <input type="submit" value="Search" class="btn btn-primary py-3 px-5">
                            </div>
                        </div>
                    </form>
                </div>
                <div class="sidebar-wrap ftco-animate">
                    <h3 class="heading mb-4">Star Rating</h3>
                    <form method="post" class="star-rating">
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input" id="exampleCheck1">
                            <label class="form-check-label" for="exampleCheck1">
                                <p class="rate"><span><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i></span></p>
                            </label>
                        </div>
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input" id="exampleCheck1">
                            <label class="form-check-label" for="exampleCheck1">
                                <p class="rate"><span><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star-o"></i></span></p>
                            </label>
                        </div>
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input" id="exampleCheck1">
                            <label class="form-check-label" for="exampleCheck1">
                                <p class="rate"><span><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star-o"></i><i class="icon-star-o"></i></span></p>
                            </label>
                        </div>
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input" id="exampleCheck1">
                            <label class="form-check-label" for="exampleCheck1">
                                <p class="rate"><span><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star-o"></i><i class="icon-star-o"></i><i class="icon-star-o"></i></span></p>
                            </label>
                        </div>
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input" id="exampleCheck1">
                            <label class="form-check-label" for="exampleCheck1">
                                <p class="rate"><span><i class="icon-star"></i><i class="icon-star-o"></i><i class="icon-star-o"></i><i class="icon-star-o"></i><i class="icon-star-o"></i></span></p>
                            </label>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-lg-9">
                <div class="row">
                    <div class="col-md-12 ftco-animate">
                        <div class="single-slider owl-carousel">
                            <div class="item">
                                <div class="hotel-img" style="background-image: url(${pageContext.request.contextPath}/images/hotel-2.jpg);"></div>
                            </div>
                            <div class="item">
                                <div class="hotel-img" style="background-image: url(${pageContext.request.contextPath}/images/hotel-3.jpg);"></div>
                            </div>
                            <div class="item">
                                <div class="hotel-img" style="background-image: url(${pageContext.request.contextPath}/images/hotel-4.jpg);"></div>
                            </div>
                        </div>
                    </div>
                    <div class="${pageContext.request.contextPath}/images/hotel-4otel-single mt-4 mb-5 ftco-animate">
                        <span>Our Best hotels &amp; Rooms</span>
                        <h2>${singleHotel.hotelName}</h2>
                        <p class="rate mb-5">
                            <span class="loc"><a href="#"><i class="icon-map"></i>${singleHotel.hotelPlace}</a></span>
                            <span class="star">
    							 <c:forEach begin="1" end="${singleHotel.hotelComment}">
                                     <i class="icon-star"></i>
                              </c:forEach>
                                <c:forEach begin="1" end="${5-singleHotel.hotelComment}">
                                    <i class="icon-star-o"></i>
                                </c:forEach>
    							 ${singleHotel.hotelComment}Rating</span>
                        </p>
                        <p>${singleHotel.hotelDetail}</p>
                    </div>
                    <div class="${pageContext.request.contextPath}/images/hotel-4otel-single ftco-animate mb-5 mt-4">
                        <h4 class="mb-4">Take A Tour</h4>
                        <div class="block-16">
                            <figure>
                                <img src="${pageContext.request.contextPath}/images/hotel-6.jpg" alt="Image placeholder" class="img-fluid">
                                <a href="https://vimeo.com/45830194" class="play-button popup-vimeo"><span class="icon-play"></span></a>
                            </figure>
                        </div>
                    </div>
                    <div class="${pageContext.request.contextPath}/images/hotel-4otel-single ftco-animate mb-5 mt-4">
                        <h4 class="mb-4">Our Rooms</h4>
                        <div class="row">
                            <c:forEach items="${hotelRoomList}" var="room">
                                <div class="col-md-4">
                                    <div class="destination">
                                        <a href="#" class="img img-2" style="background-image: url(${pageContext.request.contextPath}/${room.roomImg1});"></a>
                                        <div class="text p-3">
                                            <div class="d-flex">
                                                <div class="one">
                                                    <h3><a href="hotel-single.html">${room.roomName}</a></h3>
                                                    <p class="rate">
                                                        <c:forEach begin="1" end="${singleHotel.hotelComment}">
                                                            <i class="icon-star"></i>
                                                        </c:forEach>
                                                        <c:forEach begin="1" end="${5-singleHotel.hotelComment}">
                                                            <i class="icon-star-o"></i>
                                                        </c:forEach>
                                                        <span>${singleHotel.hotelComment}Rating</span>
                                                    </p>
                                                </div>
                                                <div class="two">
                                                    <span class="price per-price">${room.roomPrice}<br><small>/night</small></span>
                                                </div>
                                            </div>
                                            <p>${room.roomSummary}</p>
                                            <hr>
                                            <p class="bottom-area d-flex">
                                                <span><i class="icon-map-o"></i>  ${singleHotel.hotelCity}</span>
                                                <span class="ml-auto"><a href="#" onclick="addHotelOrder() " >订购</a></span>
                                            </p>
                                                <script type="text/javascript">
                                                    function addHotelOrder() {
                                                        var userId='${sessionScope.userId}';
                                                        var hotelId='${singleHotel.hotelId}';
                                                        var roomId='${room.roomId}';
                                                        if(userId!=null && userId !=''){
                                                            $.ajax({
                                                                //几个参数需要注意一下
                                                                type: "POST",//方法类型
                                                                //dataType: "json",//预期服务器返回的数据类型
                                                                url: "http://localhost:8080/hotle/addHotelOrder.do" ,//url
                                                                data: {
                                                                    "hotelId":hotelId,
                                                                    "userId":userId,
                                                                    "roomId":roomId//多数据用,分隔
                                                                },
                                                                success:function (data) {
                                                                    if(data=="success"){
                                                                        alert("购买成功")
                                                                        location.reload();
                                                                    }else {
                                                                        alert("购买失败:请刷新网页再次购买!")
                                                                    }
                                                                },
                                                                error:function () {
                                                                    alert("服务器错误!!!!!!!!!")
                                                                }
                                                            });
                                                        }
                                                        else {
                                                            alert("请先登录再进行购买!");
                                                        }
                                                    }

                                                </script>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>

                        </div>
                    </div>
                    <div class="hotel-4otel-single ftco-animate mb-5 mt-5">
                        <h4 class="mb-4">Related Hotels</h4>
                        <div class="row">
                            <c:forEach items="${threeHotHotel}" var="hotHotel">
                                <div class="col-md-4">
                                    <div class="destination">
                                        <a href="hotel-single.html" class="img img-2" style="background-image: url(${pageContext.request.contextPath}/${hotHotel.hotelImg});"></a>
                                        <div class="text p-3">
                                            <div class="d-flex">
                                                <div class="one">
                                                    <h3><a href="hotel-single.html">${hotHotel.hotelName}</a></h3>
                                                    <p class="rate">
                                                        <c:forEach begin="1" end="${hotHotel.hotelComment}">
                                                            <i class="icon-star"></i>
                                                        </c:forEach>
                                                        <c:forEach begin="1" end="${5-hotHotel.hotelComment}">
                                                            <i class="icon-star-o"></i>
                                                        </c:forEach>
                                                        <span>${hotHotel.hotelComment}Rating</span>
                                                    </p>
                                                </div>
                                                <div class="two">
                                                    <span class="price per-price">$${hotHotel.hotelAvgprice}<br><small>/night</small></span>
                                                </div>
                                            </div>
                                            <p>${hotHotel.hotelSummary}</p>
                                            <hr>
                                            <p class="bottom-area d-flex">
                                                <span><i class="icon-map-o"></i> ${hotHotel.hotelCity}</span>
                                                <span class="ml-auto"><a href="${pageContext.request.contextPath}/hotle/hotelSingle.do?hotelId=${hotHotel.hotelId}">去订购</a></span>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
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

<jsp:include page="footer.jsp"/>
<jsp:include page="LoginRegister.jsp"/>


<!-- loader -->
<div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>

<jsp:include page="script.jsp"/>

</body>
</html>