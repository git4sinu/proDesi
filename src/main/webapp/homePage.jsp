<%--
  Created by IntelliJ IDEA.
  User: Sridhar
  Date: 4/29/14
  Time: 2:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/taglibs.jsp"%>
<!--Slider-
================================================== -->
<div class="slider-container">
    <div class="sliders">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <div id="carousel-main" class="carousel slide" data-ride="carousel">
                        <!-- Indicators -->
                        <ol class="carousel-indicators">
                            <li data-target="#carousel-main" data-slide-to="0" class="active"></li>
                            <li data-target="#carousel-main" data-slide-to="1"></li>
                            <li data-target="#carousel-main" data-slide-to="2"></li>
                        </ol>
                        <div class="computer">
                            <img src="${ctx}/images/responsive1.png" >

                        </div>
                        <!-- Wrapper for slides -->
                        <div class="carousel-inner">
                            <div class="item active">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                        <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
                                            <div class="slider-content">
                                                <p>Building Bucket Elevator was never </p>
                                                <h3>so easy!</h3>
                                                <p><span>Try our new Bucket Elevator Calculator to build a top of the class model. No hefty calculations, no messing around.</span></p>
                                                <p><a href="${propath}/home/viewBucket">Try Now</a></p>
                                            </div>
                                        </div>
                                        <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                            <img src="${ctx}/images/elevator2.jpg" alt="...">
                                        </div>
                                    </div>
                                </div>

                            </div>

                        </div>

                        <!-- Controls -->
                        <!-- <a class="left carousel-control" href="#carousel-main" data-slide="prev">
                          <span class="glyphicon glyphicon-chevron-left"></span>
                        </a>
                        <a class="right carousel-control" href="#carousel-main" data-slide="next">
                          <span class="glyphicon glyphicon-chevron-right"></span>
                        </a> -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!--Slider-->


<!-- <div class="container"> -->

<div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <h2><a href="#">Features</a></h2>
        <div class="row">
            <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3 col">
                <div class="feature">
                    <img class="img-circle" src="${ctx}/images/feature1.png" alt="Generic placeholder image">
                    <h3>Web Oriented</h3>
                    <p>100% convertable to HTML/CSS layout.</p>
                </div>
            </div><!-- /.col-lg-4 -->

            <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3 col">
                <div class="feature">
                    <img class="img-circle" src="${ctx}/images/feature2.png" alt="Generic placeholder image">
                    <h3>Easy to Customize</h3>
                    <p>Vector-based shapes and minimum of  layer styles.</p>
                </div>

            </div><!-- /.col-lg-4 -->
            <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3 col">
                <div class="feature">
                    <img class="img-circle" src="${ctx}/images/feature3.png" alt="Generic placeholder image">
                    <h3>Color Swatches</h3>
                    <p>Easy to add or change elements 100% convertable. </p>
                </div>
            </div><!-- /.col-lg-4 -->

            <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3 col">
                <div class="feature">
                    <img class="img-circle" src="${ctx}/images/feature4.png" alt="Generic placeholder image">
                    <h3>Free for Share</h3>
                    <p>Your likes, shares and comments helps us.</p>
                </div>
            </div><!-- /.col-lg-4 -->

        </div><!-- /.row -->
</div>

<div class="social-media">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 ">
                <div class="about">
                    <h3>About us</h3>
                    <p>Nulla sagittis viverra erat id placerat.
                        Aenean interdum erat urna...<span><a href="#">read more &raquo;</a></span></p>
                </div>
            </div>

            <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 boarder">
                <div class="let">
                    <h3>Let's be friends</h3>
                    <div>
                        <img src="${ctx}/images/fae.jpg" alt="twitter">
                    </div>
                </div>
            </div>

            <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 boarder">
                <div class="connect">
                    <h3>Connect</h3>
                    <div class="social-links">
                        <ul class="clearfix">
                            <li class="face"></li>
                            <li class="twit"></li>
                            <li class="gplus"></li>
                            <li class="pin"></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="container marketing">
    <!-- Three columns of text below the carousel -->
    <div class="row from-news">
        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 col ">
            <div class=" our">
                <h3><a href="#">Our Services</a></h3>
                <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna. <a href="#">read more &raquo;</a></p>
            </div>
        </div><!-- /.col-lg-4 -->
        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 col boarder">
            <div class="from">

                <h3><a href="#">From Our Blog</a></h3>

                <p class="tick">T0 Super Useful Tips for Choosing the Right supplying agent</p>
                <p class="tick">T0 Super Useful Tips for Choosing the Right supplying agent</p>
                <p class="tick">T0 Super Useful Tips for Choosing the Right supplying agent</p>

                <p><a href="#">View more &raquo;</a></p>
            </div>
        </div><!-- /.col-lg-4 -->

        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 col boarder">
            <div class="events">
                <h3><a href="#">Latest News & Events</a></h3>
                <div class="news">
                    <a href="#"><img src="${ctx}/images/news1.jpg"></a>

                    <p>Green color through buckets at the desiengg website it is rocking</p>
                </div>

                <div class="news">
                    <a class="fl" href="#"><img src="${ctx}/images/news1.jpg"></a>
                    <div class="post">
                        <p>Green color through buckets at the desiengg website it is rocking</p>
                    </div>
                </div>
                <p><a href="#">View more &raquo;</a></p>
            </div>
        </div><!-- /.col-lg-4 -->
    </div><!-- /.row -->
</div>