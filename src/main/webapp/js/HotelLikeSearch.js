function searchHotelByLike() {
    var currentPage=$("").val();
    $.ajax({
        //几个参数需要注意一下
        type: "POST",//方法类型
        //dataType: "json",//预期服务器返回的数据类型
        url: "http://localhost:8080/hotle/searchHotelByLike.do",//url
        data: {
            "userName": username,
            "userPassWord": password,
            "userEmail": email
        },
        success: function (data) {
            if (data == "true") {
                alert("注册成功！");
                location.reload();
            } else {
                alert("注册失败,请重新注册！")
            }
        },
        error: function () {
            alert("注册时服务器出现错误!");
        }
    });
}