<!--    -->

<!-- login  -->
<%@ page language="java" import="java.util.*" contentType="text/html;charset=GBK" pageEncoding="GBK"%>
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header" data-blast="bgColor">
                <h5 class="modal-title" id="exampleModalLabel">Signin</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="#" method="post" class="p-3">
                    <div class="form-group">
                        <label for="userName" class="col-form-label">Username</label>
                        <input type="text" class="form-control" placeholder="" name=" name" id="userName"
                               required="">
                    </div>
                    <div class="form-group">
                        <label for="passWord" class="col-form-label">Password</label>
                        <input type="password" class="form-control" placeholder="" name="Password" id="passWord"
                               required="">
                    </div>
                    <div class="right-w3l">
                        <input type="button" class="form-control" value="Login" onclick="loginuser()">

                    </div>
                    <div class="row sub-w3l my-3">
                        <div class="col sub-w3_pvt">
                            <input type="checkbox" id="brand1" value="">
                            <label for="brand1">
                                <span></span>Remember me?</label>
                        </div>
                        <div class="col forgot-w3l text-right">
                            <a href="#" class="text-secondary">Forgot Password?</a>
                        </div>
                    </div>
                    <p class="text-center dont-do">Don't have an account?
                        <a href="#" data-toggle="modal" data-target="#exampleModal1" class="text-secondary">
                            Register Now</a>

                    </p>

               </form>

            </div>
        </div>
    </div>
</div>
<!-- //login -->

<!-- register -->
<div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header" data-blast="bgColor">
                <h5 class="modal-title" id="exampleModalLabel1">Register</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form accept-charset="UTF-8" action="#" method="post" class="p-3">
                    <div class="form-group">
                        <label  class="col-form-label">Username</label>&nbsp;&nbsp;&nbsp;&nbsp;<span id="rname"></span>
                        <input  type="text" class="form-control" placeholder="4到16位（字母，数字，下划线，减号）" name=" name" id="recipient-rname"
                               required="" oninput="checkName()">
                    </div>
                    <div class="form-group">
                        <label for="recipient-email" class="col-form-label">Email</label>&nbsp;&nbsp;&nbsp;&nbsp;<span id="remail"></span>
                        <input type="email" class="form-control" placeholder="" name="Email" id="recipient-email"
                               required="" oninput="checkEmail()">
                    </div>
                    <div class="form-group">
                        <label for="password1" class="col-form-label">Password</label>&nbsp;&nbsp;&nbsp;&nbsp;<span id="rpass1"></span>
                        <input type="password" class="form-control" placeholder="" name="Password" id="password1"
                               required="" oninput="checkPass1()">
                    </div>
                    <div class="form-group">
                        <label for="password2" class="col-form-label">Confirm Password</label>&nbsp;&nbsp;&nbsp;&nbsp;<span id="rpass2"></span>
                        <input type="password" class="form-control" placeholder="" name="Confirm Password" id="password2"
                               required=""  oninput="checkPass2()" >
                    </div>
                    <div class="sub-w3l">
                        <div class="sub-w3_pvt">
                            <input type="checkbox" id="brand2" value="">
                            <label for="brand2" class="mb-3">
                                <span></span>I Accept to the Terms & Conditions</label>
                        </div>
                    </div>
                    <div class="right-w3l">
                        <input type="button" class="form-control" value="Register" onclick="register()">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- // register -->