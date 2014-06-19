<%--
  Created by IntelliJ IDEA.
  User: Sridhar
  Date: 4/29/14
  Time: 2:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/taglibs.jsp"%>
<div class="caluculator">
<div class="container">
<div class="row">
<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
<div class="row">
<div class="col-xs-12 col-sm-12 col-md-9 col-lg-9 same-9">
    <div class="step-tabs">
        <ul id="myTab" class="nav nav-tabs step breadcrum">
            <li <c:if test="${empty model.bucketData.id && empty requestScope.register}">class="active"</c:if>><a>Step 1<p>Key in the values</p></a></li>
            <li <c:if test="${!empty requestScope.register}">class="active"</c:if>><a>Step 2<p>Register</p></a></li>
            <li <c:if test="${!empty model.bucketData.id && !model.bucketData.paymentStatus}">class="active"</c:if>><a>Step 3<p>Pay online</p></a></li>
            <li <c:if test="${!empty model.bucketData.id && model.bucketData.paymentStatus}">class="active"</c:if>><a>Step 4<p>see or download Results</p></a></li>
        </ul>

    </div>

</div>

<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
<div id="myTabContent" class="tab-content">
<%--step 1 starts--%>
<div <c:choose><c:when test="${empty model.bucketData.id && empty requestScope.register}">class="tab-pane fade active in"</c:when><c:otherwise>class="tab-pane fade"</c:otherwise></c:choose> id="step1">
    <div class="col-xs-12 col-sm-9 col-md-9 col-lg-9 some-9" id="bucket1">
        <div class="form-step-1">
            <h1>Bucket Elevator calcultaion</h1>
            <form class="form-horizontal buck1" role="form" action="${propath}/home/showRegister" method="post">
                <div class="form-group item">
                    <label for="jcapacity" class="col-sm-4 control-label">Capacity</label>
                    <div class="col-sm-8">
                        <input type="number" class="form-control number" name="capacity" id="jcapacity" data-validate-minmax="1,100" required='required' placeholder="KG/HOUR" onblur="store('jcapacity','capacity');" value="${model.bucketData.capacity}">
                        <div class="jcapacity">
                            <div class="popover fade right in hi" ><div class="arrow"></div><h3 class="popover-title">Capacity</h3><div class="popover-content">And here's some amazing content. It's very engaging. right?</div></div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="jdensity" class="col-sm-4 control-label">Product Density</label>
                    <div class="col-sm-8">
                        <input type="number" class="form-control number" name="density" id="jdensity" data-validate-minmax="1,100" required='required' placeholder="KG/CU.M" onblur="store('jdensity','density');" value="${model.bucketData.density}">
                        <div class="jdensity">
                            <div class="popover fade right in hi" ><div class="arrow"></div><h3 class="popover-title">Product Density</h3><div class="popover-content">And here's some amazing content. It's very engaging. right?</div></div>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label for="jvolume" class="col-sm-4 control-label">Product Volume in a Bucket</label>
                    <div class="col-sm-8">
                        <input type="number" class="form-control number" name="volume" id="jvolume" data-validate-minmax="1,100" required='required' placeholder="KG/CU.M" onblur="store('jvolume','volume');" value="${model.bucketData.volume}">
                        <div class="jvolume">
                            <div class="popover fade right in hi" ><div class="arrow"></div><h3 class="popover-title">Product Volume in a Bucket</h3><div class="popover-content">And here's some amazing content. It's very engaging. right?</div></div>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label for="pitch" class="col-sm-4 control-label">Assume Bucket Spacing (Pitch)</label>
                    <div class="col-sm-8">
                        <input type="number" class="form-control number" name="pitch" id="jpitch" data-validate-minmax="1,100" required='required' id="inputPassword3" placeholder="M"  name="pitch" onblur="store('jpitch','pitch');" value="${model.bucketData.pitch}">
                    </div>
                </div>

                <div class="form-group">
                    <label for="jwidth" class="col-sm-4 control-label">Enter Selected Bucket Width</label>
                    <div class="col-sm-8">
                        <input type="number" class="form-control number"name="width" id="jwidth" data-validate-minmax="1,100" required='required' placeholder="M"  onblur="store('jwidth','width');" value="${model.bucketData.width}">
                    </div>
                </div>

                <div class="form-group">
                    <label for="jheight" class="col-sm-4 control-label">Enter Elevator Height</label>
                    <div class="col-sm-8">
                        <input type="number" class="form-control number" name="height" id="jheight" data-validate-minmax="1,100" required='required' placeholder="M" onblur="store('jheight','height');" value="${model.bucketData.height}">
                    </div>
                </div>

                <div class="form-group">
                    <label for="jweight" class="col-sm-4 control-label">Enter Empty Bucket Weight</label>
                    <div class="col-sm-8">
                        <input type="number" class="form-control number" name="weight" id="jweight" data-validate-minmax="1,100" required='required' placeholder="KG"  onblur="store('jweight','weight');" value="${model.bucketData.weight}">
                    </div>
                </div>

                <div class="form-group">
                    <label for="jstress" class="col-sm-4 control-label">Allowable Stress In Belt</label>
                    <div class="col-sm-8">
                        <input type="number" class="form-control number" name="stress" id="jstress" data-validate-minmax="1,100" required='required'  placeholder="N / SQ.M" onblur="store('jstress','stress');" value="${model.bucketData.stress}">
                    </div>
                </div>

                <div class="form-group">
                    <label for="jangle" class="col-sm-4 control-label">The Angle Contact Btwn Belt and Pulley</label>
                    <div class="col-sm-8">
                        <input type="number" class="form-control number" name="angle" id="jangle" data-validate-minmax="1,100" required='required' placeholder="DEG" onblur="store('jangle','angle');" value="${model.bucketData.angle}">
                    </div>
                </div>

                <div class="form-group continue">
                    <div class="col-sm-offset-4 col-sm-8 cont">
                        <button type="submit" id='send' class="btn btn-default" data-validate-linked='profile'>Continue &raquo;</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <%--step 1 ends--%>

    <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 clearfix some-3">
        <div class="accurate1 clearfix">
            <div class="circle">
                <p class="hund">100%</p>
            </div>
            <div class="text-acc">
                <h3>Accurate results</h3>
                <p>100% Accurate Secure, Using best payment gateway.</p>
            </div>
        </div>

        <div class="accurate clearfix">
            <div class="circle">
                <p class="hund"><i class="glyphicon glyphicon-ok"></i></p>
            </div>
            <div class="text-acc">
                <h3>Affordable Pricing</h3>
                <p>can pay through online, trusted transcation payment gateway’s.</p>
            </div>
        </div>

        <div class="accurate clearfix">
            <div class="circle">
                <p class="hund"><i class="glyphicon glyphicon-thumbs-up"></i></p>
            </div>
            <div class="text-acc">
                <h3>Instant access</h3>
                <p>Sign up in 60 seconds.Get the required results immediately.</p>
            </div>
        </div>
    </div>
</div>
<%--step 2 starts--%>
<div <c:choose><c:when test="${!empty requestScope.register}">class="tab-pane fade active in"</c:when><c:otherwise>class="tab-pane fade"</c:otherwise></c:choose> id="profile">
    <div class="col-xs-12 col-sm-9 col-md-9 col-lg-9 some-9">
        <div class="form-step-2 clearfix">
            <h1>Login Or Register</h1>
            <div class="col-xs-6 col-sm-6 col-md-6 col-lg-5 clearfix" id="login">
                <form  action="${propath}/home/loginBucket"  class="form-verr clearfix form-horizontal" role="form"  id="feedbackForm" method="post">
                    <input type="hidden" name="capacity" id="capacity" value="${bucketForm.capacity}">
                    <input type="hidden" name="density" id="density" value="${bucketForm.density}">
                    <input type="hidden" name="volume" id="volume" value="${bucketForm.volume}">
                    <input type="hidden" name="pitch" id="pitch" value="${bucketForm.pitch}">
                    <input type="hidden" name="width" id="width" value="${bucketForm.width}">
                    <input type="hidden" name="height" id="height" value="${bucketForm.height}">
                    <input type="hidden" name="weight" id="weight" value="${bucketForm.weight}">
                    <input type="hidden" name="stress" id="stress" value="${bucketForm.stress}">
                    <input type="hidden" name="angle" id="angle" value="${bucketForm.angle}">
                    <input type="hidden" name="paidAmount" value="1">
                    <input type="hidden" name="productInfo"  value="test">
                    <div class="form-group item clearfix">
                        <label for="email">E-mail </label>
                        <input type="email" class="form-control email" id="email" name="email" required="required" placeholder="Email Address *">

                    </div>

                    <div class="form-group item clearfix">
                        <label for="exampleInputPassword1">Password</label>
                        <input type="password" class="form-control" id="exampleInputPassword1" name="password" placeholder="Password *" required='required'>
                    </div>

                    <div class="form-group continue clearfix">
                        <div class="col-sm-offset-3 col-sm-8 reg">
                            <button type="submit" class="btn btn-default">Login Now</button>
                        </div>
                    </div>
                </form>

            </div>

            <div class="col-xs-6 col-sm-6 col-md-6 col-lg-7" id="regi" >
                <form  action="${propath}/home/saveBucket" class="form-ver form-horizontal" role="form" id="feedbackForm" method="post">
                    <input type="hidden" name="id" value="${model.bucketData.id}">
                    <input type="hidden" name="capacity" id="capacity" value="${bucketForm.capacity}">
                    <input type="hidden" name="density" id="density" value="${bucketForm.density}">
                    <input type="hidden" name="volume" id="volume" value="${bucketForm.volume}">
                    <input type="hidden" name="pitch" id="pitch" value="${bucketForm.pitch}">
                    <input type="hidden" name="width" id="width" value="${bucketForm.width}">
                    <input type="hidden" name="height" id="height" value="${bucketForm.height}">
                    <input type="hidden" name="weight" id="weight" value="${bucketForm.weight}">
                    <input type="hidden" name="stress" id="stress" value="${bucketForm.stress}">
                    <input type="hidden" name="angle" id="angle" value="${bucketForm.angle}">
                    <input type="hidden" name="paidAmount" value="1">
                    <input type="hidden" name="productInfo"  value="test">
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
                        <input class="form-control" id="password" name="password" placeholder="Password *"  required='required' type="password">
                    </div>
                    <div class="form-group item clearfix">
                        <label for="repassword">Retype-Password</label>
                        <input type="password" class="form-control" id="repassword" name="confirmPassword" placeholder="Password *" required='required'>
                    </div>

                    <div class="form-group item clearfix">
                        <label for="mobile">Mobile</label>
                        <input type="tel" class="form-control tel" id="mobile" name="phoneNumber" placeholder="Mobile No"  data-validate-length-range="8,20" required='required'>
                    </div>

                    <div class="form-group item clearfix">
                        <label for="addr">Address</label>
                        <input type="text" class="form-control" name="address" id="addr" placeholder="Address *">
                    </div>

                    <div class="form-group continue clearfix ">
                        <div class="col-sm-offset-3 col-sm-8 reg">
                            <button type="submit" id='send' class="btn btn-default">Register</button>
                        </div>
                    </div>
                </form>
            </div>


        </div>
    </div>

    <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 clearfix some-3">
        <div class="accurate2 clearfix">
            <div class="circle">
                <p class="hund">100%</p>
            </div>
            <div class="text-acc">
                <h3>Safe and Secure</h3>
                <p>100% Accurate results,calculated using expertise formula’s.</p>
            </div>
        </div>

        <div class="accurate clearfix">
            <div class="circle">
                <p class="hund"><i class="glyphicon glyphicon-ok"></i></p>
            </div>
            <div class="text-acc">
                <h3>Affordable Pricing</h3>
                <p>can pay through online, trusted transcation payment gateway’s.</p>
            </div>
        </div>

        <div class="accurate clearfix">
            <div class="circle">
                <p class="hund"><i class="glyphicon glyphicon-thumbs-up"></i></p>
            </div>
            <div class="text-acc">
                <h3>Instant access</h3>
                <p>Sign up in 60 seconds.Get the required results immediately.</p>
            </div>
        </div>
    </div>
</div>
<%--step 2 ends--%>


<div <c:choose><c:when test="${!empty model.bucketData.id && !model.bucketData.paymentStatus}">class="tab-pane fade active in"</c:when><c:otherwise>class="tab-pane fade"</c:otherwise></c:choose>  id="pay">
    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9 some-9">
        <a href="${propath}/home/showBucket">Payment Done</a>
    </div>
</div>

<div <c:choose><c:when test="${!empty model.bucketData.id && model.bucketData.paymentStatus}">class="tab-pane fade active in"</c:when><c:otherwise>class="tab-pane fade clearfix"</c:otherwise></c:choose>id="result">
<div class="col-xs-12 col-sm-8 col-md-9 col-lg-9 some-r">
<div class="form-step-4 clearfix">
<div class="res-heading clearfix">
    <h1>Results</h1>
    <p><i class="glyphicon glyphicon-print"></i> / <i class="glyphicon glyphicon-download-alt"></i></p>
</div>
<div class="belt">
    <p>Belt Speed</p>
</div>

<div class="belt-1">
    <p>${model.bucketData.beltSpeed} M/SEC</p>
</div>

<div class="diameter clearfix">
    <div class="dia">
        <p>Diameter (D) of pulley</p>
        <p>${model.bucketData.diameter} M</p>
    </div>

    <div class="diam">
        <p>The drive Speed</p>
        <p>${model.bucketData.driveSpeed} RPM</p>
    </div>

</div>

<div class="belt-2">
    <p>Other Results</p>
</div>

<div class="other clearfix">
    <div class="ot-res">
        <p>The Satisfactory chute depth</p>
    </div>

    <div class="ot-resu">
        <p>${model.bucketData.chuteDepth}</p>
    </div>
</div>

<div class="other clearfix">
    <div class="ot-res">
        <p>The chute opening starting from the vertical center of the pull</p>
    </div>

    <div class="ot-resu">
        <p>${model.bucketData.chuteVertical}</p>
    </div>
</div>

<div class="other clearfix">
    <div class="ot-res">
        <p>Belt width</p>
    </div>

    <div class="ot-resu">
        <p>${model.bucketData.beltWidth}</p>
    </div>
</div>

<div class="other clearfix">
    <div class="ot-res">
        <p>Pulley width</p>
    </div>

    <div class="ot-resu">
        <p>${model.bucketData.pulleyWidth}</p>
    </div>
</div>

<div class="other clearfix">
    <div class="ot-res">
        <p>Gross weight of bucket(consider 2/3 of product + empty bucket Weight)</p>
    </div>

    <div class="ot-resu">
        <p>${model.bucketData.grossWeight} KG</p>
    </div>
</div>

<div class="other clearfix">
    <div class="ot-res">
        <p>Tension load on tight slide</p>
    </div>

    <div class="ot-resu">
        <p>${model.bucketData.tensionTight}</p>
    </div>
</div>

<div class="other clearfix">
    <div class="ot-res">
        <p>Tension load on slack slide</p>
    </div>

    <div class="ot-resu">
        <p>${model.bucketData.tensionSlack}</p>
    </div>
</div>

<div class="other clearfix">
    <div class="ot-res">
        <p>The power required to drive</p>
    </div>

    <div class="ot-resu">
        <p>${model.bucketData.power}</p>
    </div>
</div>

<div class="other clearfix">
    <div class="ot-res">
        <p>The no of bucket required</p>
    </div>

    <div class="ot-resu">
        <p>${model.bucketData.bucketCount}</p>
    </div>
</div>

<div class="other clearfix">
    <div class="ot-res">
        <p>Torque obtained</p>
    </div>

    <div class="ot-resu">
        <p>${model.bucketData.torque}</p>
    </div>
</div>

<div class="other clearfix">
    <div class="ot-res">
        <p>Shaft diameter(D)</p>
    </div>

    <div class="ot-resu">
        <p>${model.bucketData.shaftDiameter}</p>
    </div>
</div>

<div class="other clearfix">
    <div class="ot-res">
        <p>Load on Gear box</p>
    </div>

    <div class="ot-resu">
        <p>${model.bucketData.gearLoad}</p>
    </div>
</div>

<div class="other clearfix">
    <div class="ot-res">
        <p>Load on shaft</p>
    </div>

    <div class="ot-resu">
        <p>${model.bucketData.shaftLoad}</p>
    </div>
</div>

<div class="other clearfix">
    <div class="ot-res">
        <p>The thickness of the rim of C.I pulley</p>
    </div>

    <div class="ot-resu">
        <p>${model.bucketData.pulleyThickness}</p>
    </div>
</div>

<div class="other clearfix">
    <div class="ot-res">
        <p>The No. of arms required for pulley</p>
    </div>

    <div class="ot-resu">
        <p>${model.bucketData.pulleyArmsCount}</p>
    </div>
</div>

<div class="other clearfix">
    <div class="ot-res">
        <p>Gear ratio pole for 2-pole motor</p>
    </div>

    <div class="ot-resu">
        <p>${model.bucketData.twoPoleGearRatio}</p>
    </div>
</div>

<div class="other clearfix">
    <div class="ot-res">
        <p>Gear ratio pole for 4-pole motor</p>
    </div>

    <div class="ot-resu">
        <p>${model.bucketData.fourPoleGearRatio}</p>
    </div>
</div>

<div class="other clearfix">
    <div class="ot-res">
        <p>Gear ratio pole for 6-pole motor </p>
    </div>

    <div class="ot-resu">
        <p>${model.bucketData.sixPoleGearRatio}</p>
    </div>
</div>
</div>
</div>



<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 clearfix some-3">
    <div class="accurate4 clearfix">
        <div class="text-ac">
            <p><strong>Note: </strong>The belt speed for the bucket eleveators is the range of 1 to 2 M/Sec to ensure the product throws into the chute at the head pully. other wise change the values of either any of capacity/ bucket size/ density/bucket spacing</p>
        </div>
    </div>

    <div class="accurate-r clearfix">

        <div class="text-ac">

            <p><strong>Note: </strong>The gear box service factor should be >1.50 </p>
        </div>
    </div>


    <div class="accurate-r clearfix">
        <div class="text-ac">
            <p><strong>Note: </strong>Consider spoke/arm dia 0.002 M for up to 0.7 M pully diamete and over 0.7 pully dia consider spoke/arm dia 0.025 M </p>
        </div>
    </div>
</div>
</div>
</div>

</div>
</div>

</div>

</div>
</div>
</div>
</div>
</div>
</div>

<!--caluculator-1-ends-->
<div class="about-bucket-elveator">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text">
                <div class="first-text">
                    <h4>Bucket Elevator ?</h4>
                    <p>A bucket elevator, also called a grain leg, is a mechanism for hauling flowable bulk materials (most often grain or fertilizer) vertically.</p>
                    <h5>It consists of:</h5>
                    <div class="list">
                        <p>Buckets to contain the material;</p>
                        <p>A belt to carry the buckets and transmit the pull;</p>
                        <p>Means to drive the belt;</p>
                        <p>Accessories for loading the buckets or picking up the material, for receiving the discharged material, for maintaining the belt tension and for enclosing and protecting the elevator.</p>
                        <p>A bucket elevator can elevate a variety of bulk materials from light to heavy and from fine to large lumps.
                        </p>
                    </div>
                    <p>A centrifugal discharge elevator may be vertical or inclined. Vertical elevators depend entirely on the action of centrifugal force to get the material into the discharge chute and must be run at speeds relatively high. Inclined elevators with buckets spaced apart or set close together may have the discharge chute set partly under the head pulley. Since they don't depend entirely on the centrifugal force to put the material into the chute, the speed may be relatively lower.</p>
                    <p>Nearly all centrifugal discharge elevators have spaced buckets with rounded bottoms. They pick up their load from a boot, a pit, or a pile of material at the foot pulley.
                    </p>
                    <p>The buckets can be also triangular in cross section and set close to on the belt with little or no clearance between them. This is a continuous bucket
                        elevator. Its main use is to carry difficult materials at slow speed.</p>
                    <p>Early bucket elevators used a flat chain with small, steel buckets attached every few inches. Current construction uses a rubber belt with plastic buckets. Pulleys several feet in diameter are used at the top and bottom. The top pulley is driven by an electric motor.</p>
                    <p>The bucket elevator is the enabling technology that permitted the construction of grain elevators. A diverter at the top of the elevator allows the grain to
                        be sent to the chosen bin.
                    </p>
                    <p>A similar device with flat steps is occasionally used as an elevator for humans, e.g., for employees in parking garages. (This sort of elevator is generally
                        considered too dangerous to allow use by the public.)</p>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    function store(s1,s2){
        var sValue=$('#'+s1).val();
        $('#'+s2).val(sValue);
    }
    <c:if test="${!empty requestScope.loginFailed}">
    alert("Please Check your User Name / Password");
    </c:if>
</script>