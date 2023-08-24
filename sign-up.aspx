<%@ Page Title="" Language="C#" MasterPageFile="~/investgarh.Master" AutoEventWireup="true" CodeBehind="sign-up.aspx.cs" Inherits="investchattigarh.sign_up" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="body-inner">

        <header id="header" data-transparent="true" data-fullwidth="true" class="dark submenu-light header-disable-fixed" style="background-color: #000;">
            <div class="header-inner marginleftright-6">
                <div class="container">
                    <div id="logo" class="">
                        <a href="index.aspx">
                            <span class="logo-default">
                                <img class="imgwit-logo" src="images/icon-logo/logo-chhatishgarh.png" />
                            </span>
                            <span class="logo-dark">
                                <img class="imgwit-logo" src="images/icon-logo/logo-chhatishgarh.png" />
                            </span>
                        </a>
                    </div>
                    <div class="header-extras">
                    </div>
                    <div id="mainMenu-trigger">
                        <a class="lines-button x"><span class="lines"></span></a>
                    </div>
                    <div id="mainMenu">
                        <div class="container">
                            <nav>
                                <ul>
                                    <li><a href="index.aspx">Home</a></li>
                                    <li><a href="explore.aspx">Explore Chhattisgarh</a></li>
                                    <li class="dropdown">
                                        <a href="#">Focus Sectors</a>
                                        <ul class="dropdown-menu dropdown-arrow" style="">
                                            <li class="text-uppercase"><a href="mining.aspx">Mining</a></li>
                                            <li class="text-uppercase"><a href="agriculture.aspx">Agriculture</a></li>
                                            <li class="text-uppercase"><a href="fabrication.aspx">FABRICATION & HEAVY ENGINEERING</a></li>
                                            <li class="text-uppercase"><a href="greenenergy.aspx">Green Energy</a></li>
                                        </ul>
                                    </li>

                                    <li><a href="sign-up.aspx">Sign Up</a></li>
                                    <!--<li><a href="contactus.html">Contact Us</a></li>-->

                                </ul>
                            </nav>
                        </div>
                    </div>

                </div>
            </div>
        </header>

        <section style="background-color: #F9F7F2; color: #fff;">
            <!--<div class="parallax-container scrolly-invisible img-loaded" data-bg="" data-velocity="" style="background-image: url(&quot;images/bg-images/section-2.jpg&quot;);" data-ll-status="loaded"></div>-->
            <div class="container">
                <div class="row">
                    <div class="content col-lg-12">
                        <div class="">

                            <div class="card-body">
                                <form id="form1" class="form-validate" novalidate="novalidate">
                                    <div class="">


                                        <h2 class="parentfont mb-4 text-uppercase">Contact Information</h2>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <label for="address">Full Name <em>*</em> </label>
                                                <input type="text" class="form-control" id="stu_name" name="username" onblur="student_name()" placeholder="Enter Your Name" required="" />
                                                <div id="username-error" class="is-invalid" style="display: none;">Enter Your Full Name</div>
                                                &nbsp;
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="address">Organization Name <em>*</em> </label>
                                                <input type="text" class="form-control" id="ins_name" onblur="institute()" name="schoolname" placeholder="Enter Organization Name" required="" />
                                                <div id="school-error" class="is-invalid" style="display: none;">Enter your Organization Name</div>
                                                &nbsp;
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <label for="address">Designation <em>*</em> </label>
                                                <input type="text" class="form-control" id="txt_studies" onblur="studies()" name="location" placeholder="Enter your Designation" required="" />
                                                <div id="course-error" class="is-invalid" style="display: none;">Enter Your Designation</div>
                                                &nbsp;
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="address">Email Id <em>*</em> </label>
                                                <input type="email" class="form-control" id="contact_email" onblur="student_email()" name="email" placeholder="Enter your Email" required="" />
                                                <div id="email-error" class="is-invalid" style="display: none;">Enter valid email</div>
                                                &nbsp;
                                            </div>
                                        </div>
                                        <div class="form-row">

                                            <div class="form-group col-md-6">
                                                <label for="address">Mobile Number <em>*</em> </label>
                                                <input class="form-control" type="tel" id="contact" onblur="contactno()" name="telephone" placeholder="Enter your Mobile Number" required="" />
                                                <div id="telephone-error" class="is-invalid" style="display: none;">Enter 10 digit mobile number</div>
                                                &nbsp;
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="address">Country <em>*</em> </label>
                                                <input type="text" class="form-control " id="stu_loca" onblur="student_city()" name="city" placeholder="Enter Your Country" required="" />
                                                <div id="city-error" class="is-invalid" style="display: none;">Enter your Country.</div>
                                                &nbsp;
                                            </div>
                                        </div>


                                        <div class="" id="id_divhide">



                                            <span class="h4 parentfont text-uppercase">Tell us a bit about yourself</span>
                                            <div class="form-row">

                                                <div class="form-group col-md-6">
                                                    <label>
                                                        <span class="h5 p-b-20">I’m interested in Attending as a  <em>*</em> </span>
                                                    </label>
                                                    <select name="state" id="dob" onblur="student_dob()" class="form-control" required="">
                                                        <option value="">Select</option>
                                                        <option>Investor</option>
                                                        <option>Sponsor</option>
                                                        <option>Government Delegate</option>
                                                        <option>Others</option>


                                                    </select>
                                                    <div id="dateofbirth-error" class="is-invalid" style="display: none;">Please Select Your Are Attending As</div>
                                                    &nbsp;
                                                </div>
                                                <div class="form-group col-md-6">
                                                </div>


                                            </div>
                                        </div>



                                        <div class="" id="id_divhide1">
                                            <div class="form-row">
                                                <div class="form-group col-md-6">
                                                    <div class="h4 text-uppercase">Sector preference  <em>*</em> </div>
                                                </div>
                                                <div class="form-group col-md-6">
                                                </div>
                                            </div>

                                            <div class="form-row p-30" style="background-color: #F3EFE5;">
                                                <div class="form-group col-md-4">
                                                    <div class="form-check">
                                                        <input class="form-check-input" name="sectorpre" value="Agriculture" id="defaultCheck1" type="checkbox" />
                                                        <label class="form-check-label" for="defaultCheck1">
                                                            Agriculture and Allied Industries
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" name="sectorpre" value="Auto components" id="defaultCheck1" type="checkbox" />
                                                        <label class="form-check-label" for="defaultCheck1">
                                                            Auto components
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" name="sectorpre" value="Automotive" id="defaultCheck1" type="checkbox" />
                                                        <label class="form-check-label" for="defaultCheck1">
                                                            Automotive
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" name="sectorpre" value="Aviation" id="defaultCheck1" type="checkbox" />
                                                        <label class="form-check-label" for="defaultCheck1">
                                                            Aviation
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" name="sectorpre" value="Banking" id="defaultCheck1" type="checkbox" />
                                                        <label class="form-check-label" for="defaultCheck1">
                                                            Banking
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" name="sectorpre" value="Cement" id="defaultCheck1" type="checkbox" />
                                                        <label class="form-check-label" for="defaultCheck1">
                                                            Cement
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" name="sectorpre" value="Chemicals" id="defaultCheck1" type="checkbox" />
                                                        <label class="form-check-label" for="defaultCheck1">
                                                            Chemicals
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" name="sectorpre" value="Defence Manufacturing" id="defaultCheck1" type="checkbox" />
                                                        <label class="form-check-label" for="defaultCheck1">
                                                            Defence Manufacturing
                                                        </label>
                                                    </div>


                                                </div>
                                                <div class="form-group col-md-4">
                                                    <div class="form-check">
                                                        <input class="form-check-input" name="sectorpre" value="E-commerce" id="defaultCheck1" type="checkbox" />
                                                        <label class="form-check-label" for="defaultCheck1">
                                                            E-commerce
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" name="sectorpre" value="Education and Training" id="defaultCheck1" type="checkbox" />
                                                        <label class="form-check-label" for="defaultCheck1">
                                                            Education and Training
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" name="sectorpre" value="Electronics and Electronic System Design & Manufacturing (ESDM)" id="defaultCheck1" type="checkbox" />
                                                        <label class="form-check-label" for="defaultCheck1">
                                                            Electronics and Electronic System Design & Manufacturing (ESDM)
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" name="sectorpre" value="Fabrication and Heavy Engineering" id="defaultCheck1" type="checkbox" />
                                                        <label class="form-check-label" for="defaultCheck1">
                                                            Fabrication and Heavy Engineering
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" name="sectorpre" value="Healthcare" id="defaultCheck1" type="checkbox" />
                                                        <label class="form-check-label" for="defaultCheck1">
                                                            Healthcare
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" name="sectorpre" value="IT and ITeS" id="defaultCheck1" type="checkbox" />
                                                        <label class="form-check-label" for="defaultCheck1">
                                                            IT and ITeS
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" name="sectorpre" value="Metals and Mining" id="defaultCheck1" type="checkbox" />
                                                        <label class="form-check-label" for="defaultCheck1">
                                                            Metals and Mining
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-4">

                                                    <div class="form-check">
                                                        <input class="form-check-input" name="sectorpre" value="Non-Renewable Energy" id="defaultCheck1" type="checkbox" />
                                                        <label class="form-check-label" for="defaultCheck1">
                                                            Non-Renewable Energy
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" name="sectorpre" value="Pharmaceuticals and biotechnology" id="defaultCheck1" type="checkbox" />
                                                        <label class="form-check-label" for="defaultCheck1">
                                                            Pharmaceuticals and biotechnology
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" name="sectorpre" value="Renewable Energy" id="defaultCheck1" type="checkbox" />
                                                        <label class="form-check-label" for="defaultCheck1">
                                                            Renewable Energy
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" name="sectorpre" value="Telecommunication" id="defaultCheck1" type="checkbox" />
                                                        <label class="form-check-label" for="defaultCheck1">
                                                            Telecommunication
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" name="sectorpre" value="Textiles and apparels" id="defaultCheck1" type="checkbox" />
                                                        <label class="form-check-label" for="defaultCheck1">
                                                            Textiles and apparels
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" name="sectorpre" value="Tourism and Hospitality" id="defaultCheck1" type="checkbox" />
                                                        <label class="form-check-label" for="defaultCheck1">
                                                            Tourism and Hospitality
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" name="sectorpre" value="Others" id="defaultCheck1" type="checkbox" />
                                                        <label class="form-check-label" for="defaultCheck1">
                                                            Others
                                                        </label>
                                                    </div>


                                                </div>


                                                <label class="text-center text-danger animated visible shake" data-animation="shake" id="error-1" style="color: red;"></label>
                                            </div>


                                        </div>

                                        <div class="p-t-20" id="id_divhide2">
                                            <div class="form-row">
                                                <div class="form-group col-md-8">
                                                    <span class="h4 text-uppercase">Who would you like to network with <em>*</em> </span>

                                                </div>
                                                <div class="form-group col-md-4">
                                                </div>
                                            </div>

                                            <div class="form-group col-md-12">
                                                <div class="row">
                                                    <div class="col-lg-2">
                                                        <div class="form-check">
                                                            <input class="form-check-input" name="networkpre" value="Government Officials" id="defaultCheck2" type="checkbox" />
                                                            <label class="form-check-label" for="defaultCheck2">
                                                                Government Officials
                                                            </label>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-2">
                                                        <div class="form-check">
                                                            <input class="form-check-input" name="networkpre" value=" Other Investor Attendees" id="defaultCheck2" type="checkbox" />
                                                            <label class="form-check-label" for="defaultCheck2">
                                                                Other Investor Attendees
                                                            </label>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-2">
                                                        <div class="form-check">
                                                            <input class="form-check-input" name="networkpre" value="Industry Leaders" id="defaultCheck2" type="checkbox" />
                                                            <label class="form-check-label" for="defaultCheck2">
                                                                Industry Leaders
                                                            </label>
                                                        </div>
                                                    </div>

                                                    <div class="col-lg-6">
                                                        <div class="row">
                                                            <div class="col-lg-5">
                                                                <div class="form-check">
                                                                    <input class="form-check-input" name="networkpre" value="Native Chhattisgarh Companies" id="defaultCheck2" type="checkbox" />
                                                                    <label class="form-check-label" for="defaultCheck2">
                                                                        Native Chhattisgarh Companies
                                                                    </label>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6">
                                                                <div class="form-check">
                                                                    <input class="form-check-input" name="networkpre" value="Suppliers & Distributors" id="defaultCheck2" type="checkbox" />
                                                                    <label class="form-check-label" for="defaultCheck2">
                                                                        Suppliers & Distributors
                                                                    </label>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-1"></div>
                                                        </div>
                                                    </div>

                                                </div>


                                                <div class="row">
                                                    <div class="col-lg-6">
                                                        <label class="text-center text-danger animated visible shake" data-animation="shake" id="error-2" style="color: red;"></label>
                                                    </div>
                                                    <div class="col-lg-6"></div>
                                                </div>

                                            </div>

                                            <div class="form-row p-t-20">
                                                <div class="form-group col-md-6">
                                                    <span class="h4 text-uppercase">Please feel free to let us know if you need any Additional Support</span>
                                                </div>
                                                <div class="form-group col-md-6">
                                                </div>
                                            </div>
                                            <div class="form-group ">
                                                <div class="form-check">
                                                    <input class="form-check-input" name="additional" value="Investment opportunities" id="defaultCheck1" type="checkbox" />
                                                    <label class="form-check-label" for="defaultCheck1">
                                                        I would like to learn more about Investment opportunities within Chhattisgarh.
                                                    </label>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <div class="form-check">
                                                    <input class="form-check-input" name="additional" value=" receive mail updates" id="defaultCheck1" type="checkbox" />
                                                    <label class="form-check-label" for="defaultCheck1">
                                                        I would like to receive mail updates from Investgarh Chhattisgarh
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="form-check">
                                                    <input class="form-check-input" name="additional" value="I would like to receive support in getting my Pass & scheduling my Summit Tour" id="defaultCheck1" type="checkbox" />
                                                    <label class="form-check-label" for="defaultCheck1">
                                                        I would like to receive support in getting my Pass & scheduling my Summit Tour.
                                                    </label>
                                                </div>




                                                <div class="row">
                                                    <div class="col-lg-6">
                                                        <label class="text-center text-danger animated visible shake" data-animation="shake" id="error-3" style="color: red;"></label>
                                                    </div>
                                                    <div class="col-lg-6"></div>
                                                </div>

                                            </div>
                                            <div class="form-row p-t-20">
                                                <div class="form-group col-md-6">
                                                    <div class="h4 text-uppercase">Share Your Enquiry</div>
                                                </div>
                                                <div class="form-group col-md-6">
                                                    <!--<label class="text-center text-danger animated visible shake" data-animation="shake" id="error-3" style="color: red;"></label>-->
                                                </div>
                                                <textarea type="text" id="res_msg" name="widget-contact-form-message" rows="6" class="form-control required" placeholder="Enter your Message"></textarea>
                                            </div>
                                            <div class="h4 text-uppercase p-t-20">Terms and conditions  <em>*</em> </div>
                                            <div class="form-row">
                                                <div class="form-group col-lg-12">
                                                    <p>The data you provide us will be used to register you for the event. By completing the registration form, you accept IC Summit’s Terms & Conditions and Data Collection Consent. </p>

                                                    <div class="form-group">
                                                        <div class="custom-control custom-checkbox">
                                                            <input type="checkbox" name="terms_conditions" id="terms_conditions" class="custom-control-input" value="1" required="" />
                                                            <label class="custom-control-label" for="terms_conditions">
                                                                Yes, to complete registration, I agree to my contact data being passed to sponsors,
                                                                investors to contact me as a follow-up from my attendance at IC Summit 2022.
                                                                Use of your contact data governed by the sponsor’s<a href="privacypolicy.html" target="_blank">Privacy Policy</a>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--<div class="form-group col-lg-6">
                                                    <label class="text-center text-danger animated visible shake" data-animation="shake" id="error" style="color: red;"></label>
                                                </div>-->

                                            </div>


                                            <div class="form-row">
                                                <div class="form-group col-lg-6">
                                                    <button type="submit" id="webinar_submit" class="btn m-t-30 mt-3">Submit</button>
                                                </div>
                                                <div class="form-group col-lg-6">
                                                    <label class="text-center text-danger animated visible shake" data-animation="shake" id="error" style="color: red;"></label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <div class="bg-overlay loader_bg" id="id_load">
            <div class=" loader"></div>
        </div>
        <div class="modal fade" id="modal-2" tabindex="-1" role="modal" aria-labelledby="modal-label-2" aria-hidden="true">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 id="modal-label-2" class="modal-title"></h4>
                        <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                    </div>
                    <div class="modal-body">
                    </div>
                    <div class="modal-footer">
                        <div class="float-left">
                            <button data-dismiss="modal" class="btn close btn-b" type="button">Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <script src="js/jquery.js"></script>
    <script src="js/functions.js"></script>
    <script src="js/commondatastore.js"></script>
    <script src="js/jqs.js"></script>

</asp:Content>
