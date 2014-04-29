<%--
  Created by IntelliJ IDEA.
  User: Sridhar
  Date: 4/29/14
  Time: 2:07 PM
  To change this template use File | Settings | File Templates.
--%>
<div class="caluculator">
<div class="container">
<div class="row">
<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
<div class="row">
<div class="col-xs-12 col-sm-12 col-md-9 col-lg-9 same-9">
    <div class="step-tabs">
        <ul id="myTab" class="nav nav-tabs step breadcrum">
            <li class="active"><a href="#step1" data-toggle="tab">Step 1<p>Key in the values</p></a></li>
            <li><a href="#profile" data-toggle="tab">Step 2<p>Register</p></a></li>
            <li><a href="#pay" data-toggle="tab">Step 3<p>Pay online</p></a></li>
            <li><a href="#result" data-toggle="tab">Step 4<p>see or download Results</p></a></li>
        </ul>

    </div>

</div>

<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
<div id="myTabContent" class="tab-content">
<div class="tab-pane fade active in" id="step1">
    <div class="col-xs-12 col-sm-9 col-md-9 col-lg-9 some-9">
        <div class="form-step-1">

            <h1>Bucket Elevator calcultaion</h1>
            <form class="form-horizontal" role="form">
                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-4 control-label">Capacity</label>
                    <!--  <div class="col-sm-8">
                       <input type="email" class="form-control" id="inputEmail3"  data-toggle="tooltip" placeholder="KG/HOUR">
                     </div> -->
                    <div class="col-sm-8">
                        <input type="email" class="form-control" name="inputEmail3" id="inputEmail3" placeholder="KG/HOUR"></input>
                        <div class="inputEmail3">
                            <div class="popover fade right in hi" ><div class="arrow"></div><h3 class="popover-title">Capacity</h3><div class="popover-content">And here's some amazing content. It's very engaging. right?</div></div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-4 control-label">Product Density</label>
                    <!-- <div class="col-sm-8">
                      <input type="password" class="form-control" id="inputPassword3" placeholder="KG/CU.M">
                    </div> -->

                    <div class="col-sm-8">
                        <input type="email" class="form-control" name="inputPassword3" id="inputPassword3" placeholder="KG/CU.M"></input>
                        <div class="inputPassword3">
                            <div class="popover fade right in hi" ><div class="arrow"></div><h3 class="popover-title">Product Density</h3><div class="popover-content">And here's some amazing content. It's very engaging. right?</div></div>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label for="inputPassword4" class="col-sm-4 control-label">Product Volume in a Bucket</label>
                    <div class="col-sm-8">
                        <input type="email" class="form-control" name="inputPassword4" id="inputPassword4" placeholder="KG/CU.M"></input>
                        <div class="inputPassword4">
                            <div class="popover fade right in hi" ><div class="arrow"></div><h3 class="popover-title">Product Volume in a Bucket</h3><div class="popover-content">And here's some amazing content. It's very engaging. right?</div></div>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-4 control-label">Assume Bucket Spacing (Pitch)</label>
                    <div class="col-sm-8">
                        <input type="password" class="form-control" id="inputPassword3" placeholder="M">
                    </div>
                </div>

                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-4 control-label">Enter Selected Bucket Width</label>
                    <div class="col-sm-8">
                        <input type="password" class="form-control" id="inputPassword3" placeholder="M">
                    </div>
                </div>

                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-4 control-label">Enter Elevator Height</label>
                    <div class="col-sm-8">
                        <input type="password" class="form-control" id="inputPassword3" placeholder="M">
                    </div>
                </div>

                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-4 control-label">Enter Empty Bucket Weight</label>
                    <div class="col-sm-8">
                        <input type="password" class="form-control" id="inputPassword3" placeholder="KG">
                    </div>
                </div>

                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-4 control-label">Allowable Stress In Belt</label>
                    <div class="col-sm-8">
                        <input type="password" class="form-control" id="inputPassword3" placeholder="N / SQ.M">
                    </div>
                </div>

                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-4 control-label">The Angle Contact BtwnBelt and Pulley</label>
                    <div class="col-sm-8">
                        <input type="password" class="form-control" id="inputPassword3" placeholder="RAD">
                    </div>
                </div>

                <div class="form-group continue">
                    <div class="col-sm-offset-4 col-sm-8 cont">
                        <button type="submit" class="btn btn-default">Continue</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

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
<div class="tab-pane fade" id="profile">
    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9 some-9">
        <div class="form-step-2">
            <h1>Register to see the results</h1>
            <form  class="form-ver"  role="form">
                <div class="form-group">
                    <label for="exampleInputEmail1">Your basic Information</label>
                    <input type="email" class="form-control" id="exampleInputEmail1" placeholder="First Name *">
                </div>
                <div class="form-group acc-form">
                    <label for="exampleInputPassword1">Your account credentials</label>
                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Email Address *">

                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password *">

                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Confirm Password*">
                </div>

                <div class="form-group">
                    <label for="exampleInputPassword1">Your mobile numer</label>
                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Mobile number *">
                </div>

                <div class="form-group">
                    <label for="exampleInputPassword1">Your Address</label>
                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Address *">
                </div>

                <div class="form-group continue clearfix">
                    <div class="col-sm-offset-4 col-sm-8 reg">
                        <button type="submit" class="btn btn-default">Register</button>
                    </div>
                </div>
            </form>
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

<div class="tab-pane fade" id="pay">
    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9 some-9">

    </div>
</div>

<div class="tab-pane fade clearfix" id="result">
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
    <p>1.39 M/SEC</p>
</div>

<div class="diameter clearfix">
    <div class="dia">
        <p>Diameter (D) of pulley</p>
        <p>0.394 M</p>
    </div>

    <div class="diam">
        <p>The drive Speed</p>
        <p>67.41 RPM</p>
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
        <p>0.694</p>
    </div>
</div>

<div class="other clearfix">
    <div class="ot-res">
        <p>The chute opening starting from the vertical center of the pull</p>
    </div>

    <div class="ot-resu">
        <p>0.694</p>
    </div>
</div>

<div class="other clearfix">
    <div class="ot-res">
        <p>Belt width</p>
    </div>

    <div class="ot-resu">
        <p>0.694</p>
    </div>
</div>

<div class="other clearfix">
    <div class="ot-res">
        <p>Pulley width</p>
    </div>

    <div class="ot-resu">
        <p>0.694</p>
    </div>
</div>

<div class="other clearfix">
    <div class="ot-res">
        <p>Gross weight of bucket(consider 2/3 of product + empty bucket Weight)</p>
    </div>

    <div class="ot-resu">
        <p>0.87 KG</p>
    </div>
</div>

<div class="other clearfix">
    <div class="ot-res">
        <p>Tension load on tight slide</p>
    </div>

    <div class="ot-resu">
        <p>0.694</p>
    </div>
</div>

<div class="other clearfix">
    <div class="ot-res">
        <p>Tension load on slack slide</p>
    </div>

    <div class="ot-resu">
        <p>0.694</p>
    </div>
</div>

<div class="other clearfix">
    <div class="ot-res">
        <p>The power required to drive</p>
    </div>

    <div class="ot-resu">
        <p>0.694</p>
    </div>
</div>

<div class="other clearfix">
    <div class="ot-res">
        <p>The no of bucket required</p>
    </div>

    <div class="ot-resu">
        <p>0.694</p>
    </div>
</div>

<div class="other clearfix">
    <div class="ot-res">
        <p>Torque obtained</p>
    </div>

    <div class="ot-resu">
        <p>0.694</p>
    </div>
</div>

<div class="other clearfix">
    <div class="ot-res">
        <p>Shaft diameter(D)</p>
    </div>

    <div class="ot-resu">
        <p>0.694</p>
    </div>
</div>

<div class="other clearfix">
    <div class="ot-res">
        <p>Load on Gear box</p>
    </div>

    <div class="ot-resu">
        <p>0.694</p>
    </div>
</div>

<div class="other clearfix">
    <div class="ot-res">
        <p>Load on shaft</p>
    </div>

    <div class="ot-resu">
        <p>0.694</p>
    </div>
</div>

<div class="other clearfix">
    <div class="ot-res">
        <p>The thickness of the rim of C.I pulley</p>
    </div>

    <div class="ot-resu">
        <p>0.694</p>
    </div>
</div>

<div class="other clearfix">
    <div class="ot-res">
        <p>The No. of arms required for pulley</p>
    </div>

    <div class="ot-resu">
        <p>0.694</p>
    </div>
</div>

<div class="other clearfix">
    <div class="ot-res">
        <p>Gear ratio pole for 2-pole motor</p>
    </div>

    <div class="ot-resu">
        <p>0.694</p>
    </div>
</div>

<div class="other clearfix">
    <div class="ot-res">
        <p>Gear ratio pole for 4-pole motor</p>
    </div>

    <div class="ot-resu">
        <p>0.694</p>
    </div>
</div>

<div class="other clearfix">
    <div class="ot-res">
        <p>Gear ratio pole for 6-pole motor </p>
    </div>

    <div class="ot-resu">
        <p>14.83</p>
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