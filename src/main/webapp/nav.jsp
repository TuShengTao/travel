
<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">

        <a class="navbar-brand"  href="${pageContext.request.contextPath}/hotle/searchHotelOrderById.do?userId=${sessionScope.userId}" >
            ${ sessionScope.userName}</a>

        <!--  上面代码用 c if标签判断用户是否登录 登录就显示用户的姓名 和头像 点击用户名和头像可以跳转到用户中心-->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="oi oi-menu"></span> Menu
        </button>

        <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active"><a href="${pageContext.request.contextPath}/hotle/findFiveHotHotle.do" class="nav-link">Home</a></li><!--  ok -->
                <li class="nav-item"><a href=" about.jsp" class="nav-link">About</a></li>
                <li class="nav-item"><a href="${pageContext.request.contextPath}/view/searchViewView.do" class="nav-link">View</a></li>
                <li class="nav-item"><a href="${pageContext.request.contextPath}/hotle/searchHotelView.do" class="nav-link">Hotels</a></li>
                <li class="nav-item"><a href="blog.jsp" class="nav-link">Blog</a></li>
                <li class="nav-item"><a href="contact.jsp" class="nav-link">Contact</a></li>
                <li>
                    <button type="button" class="btn w3ls-btn btn-2  d-block" data-toggle="modal" aria-pressed="false"
                            data-target="#exampleModal">
                        <span class="fa fa-lock" style="background-color:rgba(252,255,234,0.1)"></span> Sign in
                    </button>
                </li>
                <li><button type="button" class="btn w3ls-btn d-block" data-toggle="modal" aria-pressed="false"
                            data-target="#exampleModal1">
                    <span class="fa fa-sign-in" style="background-color:rgba(252,255,234,0.1)" ></span>Register
                </button>
                </li>

            </ul>
        </div>
    </div>
</nav>