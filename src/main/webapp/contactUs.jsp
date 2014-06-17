<%--
  Created by IntelliJ IDEA.
  User: Sridhar
  Date: 6/17/14
  Time: 5:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/taglibs.jsp"%>
<!-- Contact page start -->
<section id="Contact-page">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <!-- Contact form start -->
                <div class="col-lg-7 col-md-8 col-sm-8 col-xs-12" id="contact">


                    <div class="panel">
                        <div class="panel-heading">
                            <h3 class="">
                                <i class="icon-envelope main-color"></i>
                                Feel Free To Contact us
                            </h3>
                        </div>
                        <div class="panel-body">

                            <form role="form" id="feedbackForm" class="form-horizontal" action="${propath}/home/contact" method="post">
                                <div class="form-group item">
                                    <label for="name" class="col-sm-2 control-label">Name</label>
                                    <input type="text" data-validate-length-range="6" data-validate-words="1" required="required" class="form-control" id="name" name="firstName" placeholder="Name">
                                </div>

                                <div class="form-group item">
                                    <label for="email" class="col-sm-2 control-label">Email</label>
                                    <input type="email" class="form-control email" id="email" name="email" placeholder="Email Address" required="required">
                                </div>

                                <div class="form-group item">
                                    <label for="city" class="col-sm-2 control-label">City</label>
                                    <select class="required" name="address">
                                    <option value="">City</option>
                                    <optgroup label="MajorCities">
                                        <option value="Ahmedabad"> AHMEDABAD</option>
                                        <option value="Bangalore"> BANGALORE</option>
                                        <option value="Chandigarh"> CHANDIGARH</option>
                                        <option value="Chennai"> CHENNAI</option>
                                        <option value="Dadra"> DADRA</option>
                                        <option value="Daman"> DAMAN</option>
                                        <option value="Delhi"> DELHI</option>
                                        <option value="Diu"> DIU</option>
                                        <option value="hyderabad"> HYDERABAD</option>
                                        <option value="Kolkata"> KOLKATA</option>
                                        <option value="Mumbai"> MUMBAI</option>
                                        <option value="Nagar-Haveli"> NAGAR-HAVELI</option>
                                        <option value="Pune"> PUNE</option>
                                        <option value="Secunderabad"> SECUNDERABAD</option>
                                    </optgroup>
                                    <optgroup label="All Mumbai">
                                        <option value="Central-Suburbs"> CENTRAL-SUBURBS</option>
                                        <option value="Navi-Mumbai"> NAVI-MUMBAI</option>
                                        <option value="South-Mumbai"> SOUTH-MUMBAI</option>
                                        <option value="Western-Suburbs"> WESTERN-SUBURBS</option>
                                    </optgroup>
                                    <optgroup label="Delhi/NCR">
                                        <option value="Faridabad"> FARIDABAD</option>
                                        <option value="Ghaziabad"> GHAZIABAD</option>
                                        <option value="Greater-Noida"> GREATER-NOIDA</option>
                                        <option value="Gurgaon"> GURGAON</option>
                                        <option value="Noida"> NOIDA</option>
                                    </optgroup>
                                    <optgroup label="Andaman and Nicobar Islands">
                                        <option value="Andaman-Islands"> ANDAMAN-ISLANDS</option>
                                        <option value="Nicobar-Islands"> NICOBAR-ISLANDS</option>
                                    </optgroup>
                                    <optgroup label="Andhra Pradesh">
                                        <option value="Anantapur"> ANANTAPUR</option>
                                        <option value="Bhimavaram"> BHIMAVARAM</option>
                                        <option value="Guntur"> GUNTUR</option>
                                        <option value="Nalgonda"> NALGONDA</option>
                                        <option value="Nellore"> NELLORE</option>
                                        <option value="Rajahmundry"> RAJAHMUNDRY</option>
                                        <option value="SRIKAKULAM"> SRIKAKULAM</option>
                                        <option value="Tirupati"> TIRUPATI</option>
                                        <option value="Vijayawada"> VIJAYAWADA</option>
                                        <option value="Visakhapatnam"> VISAKHAPATNAM</option>
                                    </optgroup>
                                    <optgroup label="Arunachal Pradesh">
                                        <option value="Itanagar"> ITANAGAR</option>
                                    </optgroup>
                                    <optgroup label="Assam">
                                        <option value="Dibrugarh"> DIBRUGARH</option>
                                        <option value="Dispur"> DISPUR</option>
                                        <option value="Guwahati"> GUWAHATI</option>
                                        <option value="Tezpur"> TEZPUR</option>
                                    </optgroup>
                                    <optgroup label="Bihar">
                                        <option value="Gaya"> GAYA</option>
                                        <option value="Patna"> PATNA</option>
                                        <option value="Rajgir"> RAJGIR</option>
                                        <option value="Vaishali"> VAISHALI</option>
                                    </optgroup>
                                    <optgroup label="Chhattisgarh">
                                        <option value="Raipur"> RAIPUR</option>
                                    </optgroup>
                                    <optgroup label="Goa">
                                        <option value="Canacona"> CANACONA</option>
                                        <option value="Mapusa"> MAPUSA</option>
                                        <option value="Margao"> MARGAO</option>
                                        <option value="Old-Goa"> OLD-GOA</option>
                                        <option value="Panaji"> PANAJI</option>
                                        <option value="Ponda"> PONDA</option>
                                        <option value="Vasco-Da-Gama"> VASCO-DA-GAMA</option>
                                    </optgroup>
                                    <optgroup label="Gujarat">
                                        <option value="Anand"> ANAND</option>
                                        <option value="Baroda"> BARODA</option>
                                        <option value="Bhavnagar"> BHAVNAGAR</option>
                                        <option value="Dwarka"> DWARKA</option>
                                        <option value="Gandhinagar"> GANDHINAGAR</option>
                                        <option value="Nadiad"> NADIAD</option>
                                        <option value="Surat"> SURAT</option>
                                        <option value="Vadodara"> VADODARA</option>
                                        <option value="Vapi"> VAPI</option>
                                    </optgroup>
                                    <optgroup label="Haryana">
                                        <option value="Hisar"> HISAR</option>
                                        <option value="Sonepat"> SONEPAT</option>
                                        <option value="Yamunanagar"> YAMUNANAGAR</option>
                                    </optgroup>
                                    <optgroup label="Himachal Pradesh">
                                        <option value="Dharamsala"> DHARAMSALA</option>
                                        <option value="Kullu"> KULLU</option>
                                        <option value="Manali"> MANALI</option>
                                        <option value="Shimla"> SHIMLA</option>
                                    </optgroup>
                                    <optgroup label="Jammu and Kashmir">
                                        <option value="Gulmarg"> GULMARG</option>
                                        <option value="Jammu"> JAMMU</option>
                                        <option value="Pahalgam"> PAHALGAM</option>
                                        <option value="Srinagar"> SRINAGAR</option>
                                    </optgroup>
                                    <optgroup label="Jharkhand">
                                        <option value="Dhanbad"> DHANBAD</option>
                                        <option value="Jamshedpur"> JAMSHEDPUR</option>
                                        <option value="Ranchi"> RANCHI</option>
                                    </optgroup>
                                    <optgroup label="Karnataka">
                                        <option value="Bagalokot"> BAGALOKOT</option>
                                        <option value="Belgaum"> BELGAUM</option>
                                        <option value="Davangere"> DAVANGERE</option>
                                        <option value="Dharwad"> DHARWAD</option>
                                        <option value="Gulbarga"> GULBARGA</option>
                                        <option value="Hampi"> HAMPI</option>
                                        <option value="Harihar"> HARIHAR</option>
                                        <option value="Hassan"> HASSAN</option>
                                        <option value="Hubli"> HUBLI</option>
                                        <option value="Mangalore"> MANGALORE</option>
                                        <option value="Manipal"> MANIPAL</option>
                                        <option value="Mysore"> MYSORE</option>
                                        <option value="Ramanagara"> RAMANAGARA</option>
                                        <option value="Tumkur"> TUMKUR</option>
                                        <option value="Udupi"> UDUPI</option>
                                    </optgroup>
                                    <optgroup label="Kerala">
                                        <option value="Alleppey"> ALLEPPEY</option>
                                        <option value="Ernakulam"> ERNAKULAM</option>
                                        <option value="kochi"> KOCHI</option>
                                        <option value="Kottayam"> KOTTAYAM</option>
                                        <option value="Kovalam"> KOVALAM</option>
                                        <option value="Kozhikode"> KOZHIKODE</option>
                                        <option value="Pathanamthitta"> PATHANAMTHITTA</option>
                                        <option value="Trichur"> TRICHUR</option>
                                        <option value="Trivandrum"> TRIVANDRUM</option>
                                    </optgroup>
                                    <optgroup label="Lakshadweep">
                                        <option value="Lakshadweep"> LAKSHADWEEP</option>
                                    </optgroup>
                                    <optgroup label="Madhya Pradesh">
                                        <option value="Bhopal"> BHOPAL</option>
                                        <option value="Gwalior"> GWALIOR</option>
                                        <option value="Indore"> INDORE</option>
                                        <option value="Khajuraho"> KHAJURAHO</option>
                                        <option value="Orchha"> ORCHHA</option>
                                        <option value="Ujjain"> UJJAIN</option>
                                    </optgroup>
                                    <optgroup label="Maharashtra">
                                        <option value="Ahmednagar"> AHMEDNAGAR</option>
                                        <option value="Aurangabad"> AURANGABAD</option>
                                        <option value="Kolhapur"> KOLHAPUR</option>
                                        <option value="Nagpur"> NAGPUR</option>
                                        <option value="Nashik"> NASHIK</option>
                                        <option value="Satara"> SATARA</option>
                                        <option value="Solapur"> SOLAPUR</option>
                                    </optgroup>
                                    <optgroup label="Manipur">
                                        <option value="IMPHAL"> IMPHAL</option>
                                    </optgroup>
                                    <optgroup label="Meghalaya">
                                        <option value="Shillong"> SHILLONG</option>
                                    </optgroup>
                                    <optgroup label="Mizoram">
                                        <option value="Aizawl"> AIZAWL</option>
                                    </optgroup>
                                    <optgroup label="Nagaland">
                                        <option value="Kohima"> KOHIMA</option>
                                    </optgroup>
                                    <optgroup label="Orissa">
                                        <option value="Balasore"> BALASORE</option>
                                        <option value="Bhubaneswar"> BHUBANESWAR</option>
                                        <option value="Cuttack"> CUTTACK</option>
                                        <option value="Gunupur"> GUNUPUR</option>
                                        <option value="Konark"> KONARK</option>
                                        <option value="Puri"> PURI</option>
                                        <option value="Sambalpur"> SAMBALPUR</option>
                                    </optgroup>
                                    <optgroup label="Pondicherry">
                                        <option value="Pondicherry"> PONDICHERRY</option>
                                    </optgroup>
                                    <optgroup label="Punjab">
                                        <option value="Amritsar"> AMRITSAR</option>
                                        <option value="Bathinda"> BATHINDA</option>
                                        <option value="Jalandar"> JALANDAR</option>
                                        <option value="Ludhiana"> LUDHIANA</option>
                                        <option value="Mohali"> MOHALI</option>
                                        <option value="Patiala"> PATIALA</option>
                                        <option value="Phagwara"> PHAGWARA</option>
                                        <option value="Sangrur"> SANGRUR</option>
                                    </optgroup>
                                    <optgroup label="Rajasthan">
                                        <option value="Ajmer"> AJMER</option>
                                        <option value="Alwar"> ALWAR</option>
                                        <option value="Banasthali"> BANASTHALI</option>
                                        <option value="Bhilwara"> BHILWARA</option>
                                        <option value="Bikaner"> BIKANER</option>
                                        <option value="Bundi"> BUNDI</option>
                                        <option value="Jaipur"> JAIPUR</option>
                                        <option value="Jaisalmer"> JAISALMER</option>
                                        <option value="Jodhpur"> JODHPUR</option>
                                        <option value="Kota"> KOTA</option>
                                        <option value="Lakshmangarh"> LAKSHMANGARH</option>
                                        <option value="Ranakpur"> RANAKPUR</option>
                                        <option value="Shekhawati"> SHEKHAWATI</option>
                                        <option value="Udaipur"> UDAIPUR</option>
                                    </optgroup>
                                    <optgroup label="Sikkim">
                                        <option value="Gangtok"> GANGTOK</option>
                                    </optgroup>
                                    <optgroup label="Tamil Nadu">
                                        <option value="Coimbatore"> COIMBATORE</option>
                                        <option value="Dindigul"> DINDIGUL</option>
                                        <option value="Erode"> ERODE</option>
                                        <option value="Hosur"> HOSUR</option>
                                        <option value="Kanchipuram"> KANCHIPURAM</option>
                                        <option value="Kanyakumari"> KANYAKUMARI</option>
                                        <option value="Kodaikanal"> KODAIKANAL</option>
                                        <option value="Madurai"> MADURAI</option>
                                        <option value="Nagapattinam"> NAGAPATTINAM</option>
                                        <option value="Ooty"> OOTY</option>
                                        <option value="Rameshwaram"> RAMESHWARAM</option>
                                        <option value="Salem"> SALEM</option>
                                        <option value="Tiruchengode"> TIRUCHENGODE</option>
                                        <option value="Trichy"> TRICHY</option>
                                    </optgroup>
                                    <optgroup label="Telangana">
                                        <option value="ADILABAD"> ADILABAD</option>
                                        <option value="JAGTIAL"> JAGTIAL</option>
                                        <option value="Karimnagar"> KARIMNAGAR</option>
                                        <option value="Khammam"> KHAMMAM</option>
                                        <option value="MAHBUBNAGAR"> MAHBUBNAGAR</option>
                                        <option value="NIZAMABAD"> NIZAMABAD</option>
                                        <option value="Nizamabad"> NIZAMABAD</option>
                                        <option value="Ramagundam"> RAMAGUNDAM</option>
                                        <option value="Ranga-Reddy"> RANGA-REDDY</option>
                                        <option value="Warangal"> WARANGAL</option>
                                    </optgroup>
                                    <optgroup label="Tripura">
                                        <option value="Agartala"> AGARTALA</option>
                                        <option value="Tripura-W"> TRIPURA-W</option>
                                    </optgroup>
                                    <optgroup label="Uttar Pradesh">
                                        <option value="Agra"> AGRA</option>
                                        <option value="Aligarh"> ALIGARH</option>
                                        <option value="Allahabad"> ALLAHABAD</option>
                                        <option value="Bareilly"> BAREILLY</option>
                                        <option value="Bijnor"> BIJNOR</option>
                                        <option value="Bulandshahar"> BULANDSHAHAR</option>
                                        <option value="Gorakhpur"> GORAKHPUR</option>
                                        <option value="Jaunpur"> JAUNPUR</option>
                                        <option value="Kanpur"> KANPUR</option>
                                        <option value="Lucknow"> LUCKNOW</option>
                                        <option value="Mathura"> MATHURA</option>
                                        <option value="Meerut"> MEERUT</option>
                                        <option value="Mirzapur"> MIRZAPUR</option>
                                        <option value="Modinagar"> MODINAGAR</option>
                                        <option value="Muzaffarnagar"> MUZAFFARNAGAR</option>
                                        <option value="Pantnagar"> PANTNAGAR</option>
                                        <option value="Varanasi"> VARANASI</option>
                                    </optgroup>
                                    <optgroup label="Uttarakhand">
                                        <option value="Dehradun"> DEHRADUN</option>
                                        <option value="Haridwar"> HARIDWAR</option>
                                        <option value="Nainital"> NAINITAL</option>
                                        <option value="Rishikesh"> RISHIKESH</option>
                                        <option value="Roorkee"> ROORKEE</option>
                                    </optgroup>
                                    <optgroup label="West Bengal">
                                        <option value="Berhampur"> BERHAMPUR</option>
                                        <option value="Burdwan"> BURDWAN</option>
                                        <option value="Darjeeling"> DARJEELING</option>
                                        <option value="Durgapur"> DURGAPUR</option>
                                        <option value="Murshidabad"> MURSHIDABAD</option>
                                    </optgroup>
                                    </select>
                                </div>

                                <div class="form-group item">
                                    <label for="mobile" class="col-sm-2 control-label">Mobile</label>
                                    <input type="tel" class="form-control tel" id="mobile" name="phoneNumber" placeholder="Mobile No"  data-validate-length-range="8,20" required='required'>
                                </div>

                                <div class="form-group">
                                    <label for="message" class="col-sm-2 control-label">Message</label>
                                    <textarea  class="form-control" id="message" name="message" placeholder="Message" required="required"></textarea>
                                    <span class="help-block" style="display: none;">Please enter a message.</span>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <button type="submit" id='send' class="btn btn-primary btn-lg">Send</button>
                                    </div>
                                </div>

                            </form>
                            <!-- END CONTACT FORM -->
                        </div>
                    </div>
                </div>

                <!--   </div> --> <!-- Col end -->

                <!-- sidebar start -->
                <div class="col-lg-5 col-md-4 col-sm-12 col-xs-12">
                    <div class="contact-info">
                        <h3>Contact Info</h3>
                        <div class="addr">
                            <p><i class="glyphicon glyphicon-home"></i>  #25, Masthamma layout, Near Stadium, Chitradurga , Karnataka-577501 </p>
                            <p><i class="glyphicon glyphicon-earphone"></i>  +(08194) 234773 </p>
                            <p><i class="glyphicon glyphicon-envelope"></i>  info@desiengg.com</p>
                        </div>
                    </div><!-- sidebar end -->
                </div>
            </div><!--/ row end -->
        </div><!--/ container end -->
    </div>
</section>
<!-- Faq page end -->