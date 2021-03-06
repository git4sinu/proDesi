<%@ include file="/taglibs.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Desiengg</title>

    <!-- Bootstrap core CSS -->
    <link href="${ctx}/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="${ctx}/css/fv.css" type="text/css" />
    <link rel="shortcut icon" href="${ctx}/images/favicon.ico">

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../docs-assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
<!--
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
-->
    <![endif]-->

    <!--[if gte IE 9]>


    <style type="text/css">
        .gradient {
            filter: none;
        }
    </style>
    <![endif]-->

        <script type="text/javascript" src="${ctx}/js/respond.proxy.js"></script>
    <decorator:head/>

<body<decorator:getProperty property="body.id" writeEntireProperty="true"/><decorator:getProperty property="body.class" writeEntireProperty="true"/>>

<header>

    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="navbar navbar-default" role="navigation">

                    <!-- <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"> -->

                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>

                        <div class="logo">
                            <a class="navbar-brand" href="${ctx}"><img src="${ctx}/images/logo.png"></a>
                        </div>
                    </div>
                    <!-- </div> --> <!-- col first -->

                    <div class="navbar-collapse collapse">
                        <!-- <div class="col-xs-12 col-sm-9 col-md-9 col-lg-9"> -->
                        <ul class="nav navbar-nav clearfix">
                            <li class="active"><a href="${ctx}">Home</a></li>
                            <li><a href="${ctx}/home/viewBucket">Bucket elevator design</a></li>
                            <li><a href="${propath}/home/pricing">Pricing</a></li>
                            <li><a href="${propath}/home/contact">Contact</a></li>

                        </ul>
                        <!--  </div> --><!-- col two -->
                        <!-- <div class="col-sm-3 col-md-3 col-lg-3"> -->
                        <div class="get-started">
                            <ul class="navbar-right">
                                <li><a href="#">Get started</a></li>
                                <li class="zero"><a href=""></a></li>
                                <li>
                                    <security:authorize ifAnyGranted="ROLE_ANONYMOUS">
                                        <a href="${propath}/login">Login</a>
                                    </security:authorize>
                                    <security:authorize ifNotGranted="ROLE_ANONYMOUS">
                                        <a href="${propath}/logout">Logout</a>
                                    </security:authorize>
                                </li>
                                <li class="zero"><a href=""></a></li>
                                <li><a href="${propath}/user/view">My Bucket</a></li>
                            </ul>
                        </div>
                        <!-- </div> -->
                        <!-- </div> --><!--/.nav-collapse -->
                    </div>
                </div>
            </div>

        </div>
    </div>
</header>


<a name="top"></a>
<%@ include file="/messages.jsp"%>
<decorator:body/>

<div class="footer">
    <div class="container">
        <div class="foot">
            <div class="row">
                <div class="col-xs-12 col-sm-7 col-md-7 col-lg-7">
                    <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                        <div class="footlogo">
                            <a href="/index.html"><img src="${ctx}/images/logofoot.png"></a>
                        </div>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
                        <div class="menu">
                            <ul class="clearfix">
                                <li><a href="${propath}">Home</a></li>
                                <li><a href="${propath}/home/pricing">Pricing</a></li>
                                <li><a href="${propath}/home/contact">Contact</a></li>
                                <li><a href="${propath}/home/terms">Terms and Condition</a></li>
                                <p>© 2014, Design Engineering. All Rights Reserved.</p>
                            </ul>

                        </div>
                    </div>


                </div>
                <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
                    <div class="power">
                        <p>Powered by :<a href="http://dzineden.com">dzineDen - the web agency</a></p>
                    </div>
                </div>

            </div>
        </div>

    </div>

</div>


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="${ctx}/js/multifield.js"></script>
<script src="${ctx}/js/validator.js"></script>
<script src="${ctx}/js/bootstrap.min.js"></script>
<script src="${ctx}/js/jquery.js"></script>
<script src="${ctx}/js/holder.js"></script>

<script type="text/javascript">

    $(document).ready(function() {
        $('div.jcapacity').hide();
        $('#jcapacity').focus(function() {
            $('div.jcapacity').show();
            $(document).bind('focusin.jcapacity click.jcapacity',function(e) {
                if ($(e.target).closest('.jcapacity, #jcapacity').length) return;
                $(document).unbind('.jcapacity');
                $('div.jcapacity').fadeOut('medium');
            });
        });

        $('div.jcapacity').hide();
    });

    $(document).ready(function() {
        $('div.jdensity').hide();
        $('#jdensity').focus(function() {
            $('div.jdensity').show();
            $(document).bind('focusin.jdensity click.jdensity',function(e) {
                if ($(e.target).closest('.jdensity, #jdensity').length) return;
                $(document).unbind('.jdensity');
                $('div.jdensity').fadeOut('medium');
            });
        });

        $('div.jdensity').hide();
    });


    $(document).ready(function() {
        $('div.jvolume').hide();
        $('#jvolume').focus(function() {
            $('div.jvolume').show();
            $(document).bind('focusin.jvolume click.jvolume',function(e) {
                if ($(e.target).closest('.jvolume, #jvolume').length) return;
                $(document).unbind('.jvolume');
                $('div.jvolume').fadeOut('medium');
            });
        });

        $('div.jvolume').hide();
    });

</script>
<script type="text/javascript">


    // initialize the validator function
    validator.message['date'] = 'not a real date';

    // validate a field on "blur" event, a 'select' on 'change' event & a '.reuired' classed multifield on 'keyup':
    $('form')
            .on('blur', 'input[required], input.optional, select.required', validator.checkField)
            .on('change', 'select.required', validator.checkField)
            .on('keypress', 'input[required][pattern]', validator.keypress);

    $('.multi.required')
            .on('keyup blur', 'input', function(){
                validator.checkField.apply( $(this).siblings().last()[0] );
            });

    // bind the validation to the form submit event
    //$('#send').click('submit');//.prop('disabled', true);

    $('form').submit(function(e){
        e.preventDefault();
        var submit = true;
        // evaluate the form using generic validaing
        if( !validator.checkAll( $(this) ) ){
            submit = false;
        }

        if( submit )
            this.submit();
        return false;
    });

    /* FOR DEMO ONLY */
    $('#vfields').change(function(){
        $('form').toggleClass('mode2');
    }).prop('checked',false);

    $('#alerts').change(function(){
        validator.defaults.alerts = (this.checked) ? false : true;
        if( this.checked )
            $('form .alert').remove();
    }).prop('checked',false);

</script>
</body>
</html>
