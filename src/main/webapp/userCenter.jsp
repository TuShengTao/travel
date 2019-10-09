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
<div class="hero-wrap js-fullheight" style="background-image: url('<%=request.getContextPath()%>/images/bg_1.jpg');">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
            <div class="col-md-9 text-center ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
                <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="index.html">Home</a></span> <span>Blog</span></p>
                <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">个人中心</h1>
            </div>
        </div>
    </div>
</div>

<div class="row no-gutters">
<!-- 订单种类导航开始 -->
    <div class="col-md-12 nav-link-wrap">
        <div class="nav nav-pills justify-content-center text-center" id="v-pills-tab" role="tablist" aria-orientation="vertical">
            <a class="nav-link active" id="v-pills-1-tab" data-toggle="pill" href="#v-pills-1" role="tab" aria-controls="v-pills-1" aria-selected="true">酒店订单</a>

            <a class="nav-link" id="v-pills-2-tab" data-toggle="pill" href="#v-pills-1" role="tab" aria-controls="v-pills-2" aria-selected="false">景点订单</a>

            <a class="nav-link" id="v-pills-3-tab" data-toggle="pill" href="#v-pills-1" role="tab" aria-controls="v-pills-3" aria-selected="false">机票订单</a>
        </div>
    </div>
    <!-- 订单种类导航结束-->
    <!-- 订单详情开始 酒店订单-->
    <div class="col-md-12 tab-wrap">
        <div class="tab-content p-4 px-5" id="v-pills-tabContent">
            <div class="tab-pane fade show active" id="v-pills-1" role="tabpanel" aria-labelledby="v-pills-nextgen-tab">
                <div class="row">
                    <div class="col-md align-items-end">
                        <div class="form-group">
                            <!-- 酒店单个订单开始 -->
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
                                                    <span class="ml-auto"><a href="#" onclick="delHotelOrder() " >删除</a></span>
                                                </p>
                                                <script type="text/javascript">
                                                    function delHotelOrder() {
                                                        var hotelOrderId='${room.hotelOrderId}';
                                                        if(hotelOrderId!=null && hotelOrderId !=''){
                                                            $.ajax({
                                                                //几个参数需要注意一下
                                                                type: "POST",//方法类型
                                                                //dataType: "json",//预期服务器返回的数据类型
                                                                url: "http://localhost:8080/hotle/delHotelOrder.do" ,//url
                                                                data: {
                                                                    "hotelOrderId":hotelOrderId,
                                                                },
                                                                success:function (data) {
                                                                    if(data=="success"){
                                                                        alert("删除订单成功")
                                                                       location.reload();
                                                                    }else {
                                                                        alert("删除失败！请刷新网页再次删除订单！")
                                                                    }
                                                                },
                                                                error:function () {
                                                                    alert("服务器错误!!!!!!!!!")
                                                                }
                                                            });
                                                        }
                                                        else {
                                                            alert("无订单!");
                                                        }
                                                    }
                                                </script>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>

                            </div>
                            <!-- 酒店单个订单结束 -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 酒店订单详情结束 -->
</div>
<jsp:include page="footer.jsp"/>
<jsp:include page="LoginRegister.jsp"/>

<!-- loader -->
<div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>

<jsp:include page="script.jsp"/>

</body>
</html>