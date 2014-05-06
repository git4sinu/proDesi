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
    <link rel="shortcut icon" href="${ctx}/images/favicon.ico">

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../docs-assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
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
                            <a class="navbar-brand" href="index.html"><img src="${ctx}/images/logo.png"></a>
                        </div>
                    </div>
                    <!-- </div> --> <!-- col first -->

                    <div class="navbar-collapse collapse">
                        <!-- <div class="col-xs-12 col-sm-9 col-md-9 col-lg-9"> -->
                        <ul class="nav navbar-nav clearfix">
                            <li class="active"><a href="#">Home</a></li>
                            <li><a href="#Bucket elevator design">Bucket elevator design</a></li>
                            <li><a href="#Pricing">Pricing</a></li>
                            <li><a href="#Pricing">Contact</a></li>

                        </ul>
                        <!--  </div> --><!-- col two -->
                        <!-- <div class="col-sm-3 col-md-3 col-lg-3"> -->
                        <div class="get-started">
                            <ul class="navbar-right">
                                <li><a href="#">Get statrted</a></li>
                                <li class="zero"><a href=""></a></li>
                                <li><a href="#">Login</a></li>
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
                            <a href="index.html"><img src="images/logofoot.png"></a>
                        </div>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
                        <div class="menu">
                            <ul class="clearfix">
                                <li><a href="#">Home</a></li>
                                <li><a href="#Bucket elevator design">Bucket elevator design</a></li>
                                <li><a href="#Pricing">Pricing</a></li>
                                <li><a href="#Pricing">Contact</a></li>
                                <p>© 2014, Design Engineering. All Rights Reserved.</p>
                            </ul>

                        </div>
                    </div>


                </div>
                <div class="col-xs-12 col-sm-5 col-md-5 col-lg-5">
                    <div class="power">
                        <p>Powered by :<a href="http://www.dzineden.com">dzineDen - the web agency</a></p>
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
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.js"></script>
<script src="js/holder.js"></script>

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
</body>
</html>
