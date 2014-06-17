<%@ include file="/taglibs.jsp"%>

<div class="caluculator">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" id="main-login">

                <!-- <div class="col-xs-12 col-sm-9 col-md-9 col-lg-9 some-9"> -->
                <div class="form-step-2 clearfix">
                    <h1>Login Or Register</h1>
                    <div class="col-xs-6 col-sm-6 col-md-6 col-lg-5 clearfix" id="login1">
                        <form   method="post" class="form-verr clearfix form-horizontal" role="form"  id="feedbackForm" action="<c:url value='${propath}/j_security_check'/>" autocomplete="off">
                            <div class="form-group item clearfix">
                                <label for="email">E-mail </label>
                                <input type="email" class="form-control email" id="email" name="j_username" required="required" placeholder="Email Address *">

                            </div>

                            <div class="form-group item clearfix">
                                <label for="password">Password</label>
                                <input type="password" class="form-control" id="password" name="j_password" placeholder="Password *"  required='required'>
                            </div>

                            <div class="form-group continue clearfix">
                                <div class="col-sm-offset-3 col-sm-8 reg">
                                    <button type="submit" class="btn btn-default">Login Now</button>
                                </div>
                            </div>
                        </form>

                    </div>

                    <div class="col-xs-6 col-sm-6 col-md-6 col-lg-7" id="register" >
                        <form  class="form-ver form-horizontal" role="form" id="feedbackForm" action="${propath}/home/registerUser" method="post">
                            <div class="form-group item clearfix">
                                <label for="name">Name</label>
                                <input type="text" data-validate-length-range="6" data-validate-words="1" required="required" class="form-control" id="name" name="firstName" placeholder="Name *">
                            </div>
                            <div class="form-group item clearfix">
                                <label for="email">E-Mail</label>
                                <input type="email" class="form-control email" id="email" name="email" required="required" placeholder="Email Address *">
                            </div>
                            <div class="form-group item clearfix">
                                <label for="password">Password</label>
                                <input class="form-control" id="password" name="password" placeholder="Password *" required='required' type="password">
                            </div>
                            <div class="form-group item clearfix">
                                <label for="repassword">Retype-Password</label>
                                <input type="password" class="form-control" id="repassword" name="confirmPassword" placeholder="Retype-Password *" data-validate-linked='password' required='required'>
                            </div>

                            <div class="form-group item clearfix">
                                <label for="mobile">Mobile</label>
                                <input type="tel" class="form-control tel" id="mobile" name="phoneNumber" placeholder="Mobile No"  data-validate-length-range="8,20" required='required'>
                            </div>

                            <div class="form-group item clearfix">
                                <label for="addr">Address</label>
                                <input type="text" class="form-control" id="addr"  name="address" placeholder="Address *">
                            </div>

                            <div class="form-group continue clearfix ">
                                <div class="col-sm-offset-4 col-sm-8 reg">
                                    <button type="submit" id='send' class="btn btn-default">Register</button>
                                </div>
                            </div>
                        </form>
                    </div>


                </div>
                <!--  </div> -->


            </div> <!-- col-12 ends -->
        </div> <!-- row ends -->

    </div><!--  container ends -->

</div>

<%--
<title>Login</title>
<body id="login">
<p>
    Please enter your username and password to login.
    User user/user has a <strong>ROLE_USER</strong> role,
    while admin/admin has an <strong>ROLE_ADMIN</strong> role..
</p>

<form method="post" id="loginForm" action="<c:url value='${propath}/j_security_check'/>" class="form-signin" autocomplete="off">
    <h2 class="form-signin-heading">Sign In</h2>
<c:if test="${param.error != null}">
    <div class="alert alert-error fade in">
        ${sessionScope.SPRING_SECURITY_LAST_EXCEPTION.message}
    </div>
</c:if>
    <input type="text" name="j_username" id="j_username" class="input-block-level"
           placeholder="Username" required tabindex="1">
    <input type="password" class="input-block-level" name="j_password" id="j_password" tabindex="2"
           placeholder="Password" required>

    <label class="checkbox" for="rememberMe">
        <input type="checkbox" class="checkbox" name="_spring_security_remember_me" id="rememberMe" tabindex="3"/>
        Remember Me
    </label>

    <input type="submit" class="btn btn-large btn-primary" name="login" id="login" tabindex="4" value="Login">
</form>

<script type="text/javascript">
    $(document).ready(function() {
        $("input[type='text']:visible:enabled:first", document.forms['loginForm']).focus();
    });
</script>
</body>
--%>

