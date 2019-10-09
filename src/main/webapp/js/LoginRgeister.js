

/**
 * 登录
 * **/

function loginuser() {
    var userName=$("#userName").val();//取值
    var passWord=$("#passWord").val();
    //var passWord = document.getElementById("passWord").value;
    /**第一种原生写法
     var params="userName="+userName+"&passWord="+passWord;
     //控制台输出
     console.log(params);
     //alert(params);
     //2创建对象
     var request=new XMLHttpRequest();
     //3发送请求
     request.open("post","/user/login.do",true);
     //设置请求头,一定要设置请求头
     request.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
     request.send(params);
     //4监听状态的改变
     request.onreadystatechange=function () {
		  if(request.readyState==4 && request.status==200){
				var aaa=request.responseText;
				if(aaa=="success"){
				    alert("成功")
                }
                else {
                    alert("失败")
                }
          }
      }
     **/
    if(!userName){
        alert("用户名不能为空！");
        $("#userName").focus();//获取焦点
        return ;
    }
    if(!passWord){
        alert("密码不能为空！");
        $("#passWord").focus();//获取焦点
        return ;
    }
    $.ajax({
        //几个参数需要注意一下
        type: "POST",//方法类型
        //dataType: "json",//预期服务器返回的数据类型
        url: "http://localhost:8080/user/login.do" ,//url
        data: {
            "userName":userName,
            "passWord":passWord//多数据用,分隔
        },
        success:function (data) {
            if(data=="success"){
                alert("登录成功")
                location.reload();
            }else {
                alert("登录失败:用户名或密码错误!")
            }
        },
        error:function () {
            alert("错误!!!!!!!!!")
        }
    });
}

/**
 * 注册
 * **/

var nameJudge=false;
var emailJudge=false;
var passfirstJudge=false;
var passtwoJudge=false;

/** 验证邮箱**/
function checkEmail () {
    var epattern = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
    var email=$("#recipient-email").val();
    var span=document.getElementById("remail");
    if (email!=null){
        if(epattern.test(email)){
            emailJudge=true;
            span.style.color="green";
            span.innerHTML="OK";
        } else {
            emailJudge=false;
            span.style.color="red";
            span.innerHTML="请输入正确的邮箱格式！";
        }
    }

}
/**  验证密码 **/
function checkPass1() {
    var pass1=$("#password1").val();
    var pPattern = /^.*(?=.{6,})(?=.*\d)(?=.*[A-Z])(?=.*[a-z])(?=.*[!@#$%^&*? ]).*$/;
    var span=document.getElementById("rpass1");
    if(pass1!=null){
        if(pPattern.test(pass1)){
            passfirstJudge=true;
            span.style.color="green";
            span.innerHTML="OK";
        }else {
            passfirstJudge=false;
            span.style.color="red";
            span.innerHTML="最少6位,至少包含1个：大小写字母、数字、特殊字符！";
        }
    }

}

function checkPass2() {
    var pass1=$("#password1").val();
    var pass2=$("#password2").val();
    var span=document.getElementById("rpass2");
    if (pass1!=null){
        if(pass1==pass2){
            passtwoJudge=true;
            span.style.color="green";
            span.innerHTML="OK";
        }else {
            passtwoJudge=false;
            span.style.color="red";
            span.innerHTML="请输入一致的密码！";
        }
    }

}

/** 验证用户名 **/
function checkName() {
    var span=document.getElementById("rname");
    var userName=$("#recipient-rname").val();
    //用户名正则，4到16位（字母，数字，下划线，减号）
    var uPattern = /^[a-zA-Z0-9_-]{4,16}$/;
    if(userName!=null && uPattern.test(userName)){
        $.ajax({
            //几个参数需要注意一下
            type: "POST",//方法类型
            //dataType: "json",//预期服务器返回的数据类型
            url: "http://localhost:8080/user/judegName.do" ,//url
            data: {
                "registerName":userName
            },
            success:function (data) {
                if(data=="true"){
                    nameJudge=true;//全局名字判断为true
                    span.style.color="green";
                    span.innerHTML="OK";
                }else {
                    nameJudge=false;
                    span.style.color="red";
                    span.innerHTML="已存在";
                }
            },
            error:function () {
                alert("用户名判断出现错误!");
            }
        });
    }else {
        span.style.color="red";
        span.innerHTML="请输入符合规范的用户名";
    }

}

function register() {
    var username=$("#recipient-rname").val();
    var password=$("#password1").val();
    var email=$("#recipient-email").val();


    if(nameJudge==true){
        if(emailJudge==true){
            if(passtwoJudge==true&&passfirstJudge==true){
                $.ajax({
                    //几个参数需要注意一下
                    type: "POST",//方法类型
                    //dataType: "json",//预期服务器返回的数据类型
                    url: "http://localhost:8080/user/register.do" ,//url
                    data: {
                        "userName":username,
                        "userPassWord":password,
                        "userEmail":email
                    },
                    success:function (data) {
                        if(data=="true"){
                           alert("注册成功！");
                           location.reload();
                        }else {
                            alert("注册失败,请重新注册！")
                        }
                    },
                    error:function () {
                        alert("注册时服务器出现错误!");
                    }
                });

            }else {
                alert("密码输入不正确或为空！");
            }
        }else {
            alert("Email输入错误或为空！");
        }
    }else {
        alert("用户名输入错误或为空！");
    }

}

