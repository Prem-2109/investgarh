 <%@ Page Title="" Language="C#" MasterPageFile="~/investgarh.Master" AutoEventWireup="true" CodeBehind="covid19guide.aspx.cs" Inherits="investchattigarh.covid19guide" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="body-inner">
        <header id="header" data-transparent="true" data-fullwidth="true" class="dark submenu-light header-disable-fixed">
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
        <section class="halfscreen" data-bg-parallax="images/banner/CovidGuidebanner.jpg">
            <div class="parallax-container img-loaded" data-bg="images/banner/CovidGuidebanner.jpg" data-velocity="" style="background: url(&quot;images/banner/CovidGuidebanner.jpg&quot;);" data-ll-status="loaded"></div>
        </section>
        <section>
            <div class="container">
                <span class="font-para">Plan your Visit</span><br />
                <span class="font-heading-large">COVID-19 SAFETY </span>
                <br />
                <span class="font-heading-large">MEASURE</span><br />
                <span class="font-para">We want to make sure that your visit is enjoyable and safe. 
                     To ensure this, we have implemented a number of precautionary measures across the site.</span>

                <div class="row p-t-20">
                    <%--<div class="col-lg-4">
                        <a href="pdf/Algorithmforrevisedguidelinesforinternationalarrivals20thOctober2021.pdf" target="_blank">
                            <img class="width-100" src="images/pdf/PDF1.jpg" />
                        </a>
                    </div>
                    <div class="col-lg-4 mob-padd">
                        <a href="pdf/guideforinternational.pdf" target="_blank">
                            <img class="width-100" src="images/pdf/PDF2.jpg" />
                        </a>
                    </div>--%>
                    <div class="col-lg-6 mob-padd">
                        <a href="pdf/International-Arrivals.pdf" target="_blank">
                            <img class="width-100" src="images/pdf/PDF-4.jpg" />
                        </a>
                    </div>
                   <%-- <div class="col-lg-6 mob-padd">
                        <a href="pdf/guideline.pdf" target="_blank">
                            <img class="width-100" src="images/pdf/PDF3.jpg" />
                        </a>
                    </div>--%>
                </div>
            </div>
        </section>

        <%--<section class="bg-clr-lite-gold">
            <div class="container-fullscreen  marginleftright-6">
                <div class="row">
                    <div class="col-lg-12 text-left">
                        <span class="font-para">IC Summit 2022</span><br />
                        <span class="font-para">Jan 27 -Feb 01,2022</span><br />
                        <span class="font-para">Fair Grounds, Nava Raipur.</span><br />
                    </div>
                </div>
                <div class="row p-t-20">
                    <div class="col-lg-12">
                        <span class="text-uppercase font-medium text-clr-red">PURPOSE OF THE Guide IC SUMMIT 2022</span>


                        <br />
                        <br />

                        <div class="">
                            <span class="font-para">PURPOSE OF THE GUIDE EXPO 2020 DUBAI COVID-19 GUIDE The  purpose  of  this  Guide  is 
                                to  outline  the  measures implemented  during  Expo  2020  to  manage  the risks  from  COVID-19. 
                                The  Guide  details  site-wide arrangements  established  by  the  Expo  team  and  the responsibilities  
                                of  International  Participants,  venue operators,  workforce  and  visitors  to  ensure  the  health,
                                safety  and  wellbeing  of  everyone  at  Expo  2020. 
                                
                                
                                Requirements  in  the  Guide  are  subject  to  change,
                                in  accordance  with  developments  in  UAE  legal requirements.  
                                The  Expo  team  will  ensure  that  any updates  in  COVID-19  requirements 
                                are  communicated through  the  issue  of  Circulars,  to  enable  operating plans  to  be  adjusted. 
                                We  will  implement  an  assurance programme to  monitor  compliance  with  the requirements  in  this 
                                Guide  with  penalties  in  line  with government  regulations. KEY PRINCIPLES The  requirements  in  the  COVID-19  
                                are  comprehensive, however,  a  number  of  fundamental  principles  apply to  all  operations.  
                                The  following  precautions  must  be complied  with  at  all  times,  unless  explicitly  stated otherwise 
                                within  the  Guide.</span>
                        </div>
                    </div>

                    <div class="col-lg-12">
                        <img class="width-100" src="images/covid-image/book-1.png" />
                    </div>
                </div>
            </div>
        </section>--%>

        <section class="bg-clr-lite-white">
            <!--<div class="parallax-container scrolly-invisible img-loaded" data-bg="" data-velocity="" style="background-image: url(&quot;images/bg-images/section-2.jpg&quot;);" data-ll-status="loaded"></div>-->
            <div class="container-fullscreen marginleftright-6">


                <div class="row">
                    <div class="col-lg-1"></div>
                    <div class="col-lg-10">
                        <%--<span class="text-uppercase font-medium text-clr-red">KEY PRINCIPLES</span>--%>
                       
                        <div class="">
                            <span class="font-para">The  requirements  in  the  COVID-19  are  comprehensive, however,  a  number  of  fundamental  principles  apply to  all  operations.  The  following  precautions  must  be complied  with  at  all  times,  unless  explicitly  stated otherwise  within  the  Guide.</span>
                        </div>
                    </div>
                    <div class="col-lg-1"></div>
                </div>

                <div class="space"></div>
                <div class="row">

                    <div class="col-lg-1"></div>
                    <div class="col-lg-2">
                        <div class="icon-box effect large center process">
                            <div class="icon">
                                <a href="#">
                                    <i class="">
                                        <img class="imgwit-50" src="images/covidicons/CovidIcon1.png">
                                    </i>
                                </a>
                            </div>
                            <div class="font-sm-p text-center ">
                                All  visitors  and workforce  must comply  with COVID-19 precautions on public  and  private transport  modes.
                            </div>
                        </div>
                        <%--<div class="icon-box effect small center">
                            <div class="icon"><a href="#"><i class="">
                                <img src="images/covidicons/CovidIcon1.png" /></i></a></div>
                            
                            <p> All  visitors  and workforce  must comply  with COVID-19 precautions on public  and  private transport  modes.</p>
                        </div>--%>
                    </div>

                    <div class="col-lg-2">
                        <div class="icon-box effect large center process">
                            <div class="icon">
                                <a href="#">
                                    <i class="">
                                        <img class="imgwit-50" src="images/covidicons/CovidIcon2.png" />
                                    </i>
                                </a>
                            </div>
                            <div class="font-sm-p text-center ">
                                All  visitors  and workforce  must maintain  2  metres social  distancing, at  the  time  of  this publication.
                            </div>
                        </div>

                    </div>
                    <div class="col-lg-2">
                        <div class="icon-box effect large center process">
                            <div class="icon">
                                <a href="#">
                                    <i class="">
                                        <img class="imgwit-50" src="images/covidicons/CovidIcon3.png" />
                                    </i>
                                </a>
                            </div>
                            <div class="font-sm-p text-center ">
                                All  visitors  and workforce  must wear  a  face  mask.
                            </div>
                        </div>

                    </div>
                    <div class="col-lg-2">
                        <div class="icon-box effect large center process">
                            <div class="icon">
                                <a href="#">
                                    <i class="">
                                        <img class="imgwit-50" src="images/covidicons/CovidIcon4.png" />
                                    </i>
                                </a>
                            </div>
                            <div class="font-sm-p text-center ">
                                All  visitors  and workforce  must sanitize,  or  wash their  hands regularly
                            </div>
                        </div>

                    </div>
                    <div class="col-lg-2">
                        <div class="icon-box effect large center process">
                            <div class="icon">
                                <a href="#">
                                    <i class="">
                                        <img class="imgwit-50" src="images/covidicons/CovidIcon5.png" />
                                    </i>
                                </a>
                            </div>
                            <div class="font-sm-p text-center ">
                                All  visitors  and workforce  who  are unwell  must  not  visit the Expo 2020 site
                            </div>
                        </div>

                    </div>
                    <div class="col-lg-1"></div>
                </div>


                <div class="row">
                    <div class="col-lg-1"></div>
                    <div class="col-lg-2">
                        <div class="icon-box effect large center process">
                            <div class="icon">
                                <a href="#">
                                    <i class="">
                                        <img class="imgwit-50" src="images/covidicons/CovidIcon6.png" />
                                    </i>
                                </a>
                            </div>
                            <div class="font-sm-p text-left">
                                All  visitors  and workforce  who feel  unwell  while  at Expo 2020 must immediately  seek  onsite  medical  advice.
                            </div>
                        </div>

                    </div>

                    <div class="col-lg-2">
                        <div class="icon-box effect large center process">
                            <div class="icon">
                                <a href="#">
                                    <i class="">
                                        <img class="imgwit-50" src="images/covidicons/CovidIcon7.png" />
                                    </i>
                                </a>
                            </div>
                            <div class="font-sm-p text-center ">
                                All  Expo  and International Participant  staff, volunteers, contractors  and service  providers must  be  vaccinated
                            </div>
                        </div>

                    </div>
                    <div class="col-lg-2">
                        <div class="icon-box effect large center process">
                            <div class="icon">
                                <a href="#">
                                    <i class="">
                                        <img class="imgwit-50" src="images/covidicons/CovidIcon8.png" />
                                    </i>
                                </a>
                            </div>
                            <div class="font-sm-p text-center ">
                                All  venue  operators must  assess  the  risks from COVID-19 and implement  suitable precautions.
                            </div>
                        </div>

                    </div>
                    <div class="col-lg-2">
                        <div class="icon-box effect large center process">
                            <div class="icon">
                                <a href="#">
                                    <i class="">
                                        <img class="imgwit-50" src="images/covidicons/CovidIcon9.png" />
                                    </i>
                                </a>
                            </div>
                            <div class="font-sm-p text-center ">
                                All  venue  operators must  define capacity  limits  and ensure  these  limits are  not  exceeded.
                            </div>
                        </div>

                    </div>
                    <div class="col-lg-2">
                        <div class="icon-box effect large center process">
                            <div class="icon">
                                <a href="#">
                                    <i class="">
                                        <img class="imgwit-50" src="images/covidicons/CovidIcon10.png" />
                                    </i>
                                </a>
                            </div>
                            <div class="font-sm-p text-center ">
                                All  venue  operators must  implement comprehensive cleaning  and sanitization programmes.
                            </div>
                        </div>

                    </div>
                    <div class="col-lg-1"></div>
                </div>




            </div>



        </section>

        <%--<section>
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <span class="text-uppercase font-medium text-clr-green">KEEPING OUR GUESTS SAFE</span>
                        <br />
                        <br />

                        <div class="">
                            <span class="font-para">We are  committed  to  ensuring  that  all  stages  of  the  visitor  journey  at   Expo  2020  are  safe  and  that  a  range  of  visitor  services  are  available  to provide  information  on  COVID-19  measures  to  protect  the  health,  safety and  wellbeing  of  all  visitors  and  guest  groups.</span>
                        </div>
                    </div>
                </div>


                <div class="row p-t-30">
                    <div class="col-lg-4">
                        <img class="width-100" src="images/covid-image/safetyshield.png" />
                    </div>
                    <div class="col-lg-1"></div>
                    <div class="col-lg-7">
                        <div class="row">
                            <div class="col-lg-12">
                                <span class="font-para">VISITOR ENTRY PROTOCOLS
                                </span>
                                <br />
                                <br />
                                <span class="font-para-li">All  adult  visitors  (18  and  above)  will  be  asked  to  present proof  of  COVID-19  vaccination  
                           or  negative  PCR  test taken  within  previous  72  hours. All  non-vaccinated  ticket-holders  must  
                           take  a  PCR  test prior  to  arrival  to  the  Expo  2020  site,  and  should  arrive ready  to  show  
                           a  negative  test  result  at  the  entry  gate. Vaccinated  visitors  do  not  require  a  PCR  test.</span>
                            </div>

                            <div class="col-lg-12 p-t-20">
                                <span class="font-para">SUSPECTED AND CONFIRMED CASES
                                </span>
                                <br />
                                <span class="text-clr-gd">Isolation  Rooms</span>
                                <br />
                                <span class="font-para-li">Isolation  rooms  are  provided  at  strategic  locations across  the  Expo  site  supported  by  
                            dedicated  staff  from Dubai  Corporation  for Ambulance  Services.  Isolation rooms are  used  to  host  
                            suspected  cases  for  further assessment  prior  to  COVID-19  testing,  if  required.</span>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </section>--%>

        <%--<section class="bg-clr-green">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 text-white m-auto">
                        <span class="text-uppercase font-medium ">Suspected Cases</span><br />
                        <br />
                        <span class="font-para">Any visitor  who  becomes  unwell  on  the  site  will  be treated  as  a  potential  COVID-19  case.  The  following measures  will  be  implemented: </span>

                        <br />
                        <br />

                        <ul class="list-icon list-icon-circle list-icon-colored font-para-li " style="line-height: 140%;">
                            <li>The visitor  will  be  directed  to  the  nearest  isolation room for  assessment  from  DCAS  personnel.</li>
                            <li>People  of  Determination  will  be  permitted  to  have  a family  member  or  companion  in  the  isolation  room.</li>
                            <li>The individual  must  wear  a  face  mask (consideration  should  be  given  to  People  of Determination,  or  individuals  with  underlying  health conditions  that  affect  breathing)  and  asked  to  wash or  sanitize  their  hands. </li>
                            <li>It  is  to  be  ensured  that  the  areas  the  suspected  case has  been  in  are  sanitized  immediately,  with  particular attention  to  equipment,  frequently  touched  surfaces, such  as  door  handles  and  common  areas  including toilets.</li>

                        </ul>
                    </div>

                    <div class="col-lg-6">
                        <img class="width-100" src="images/covid-image/cases.png" />
                    </div>

                </div>
            </div>




        </section>--%>

        <%--<section>
            <div class="container">
                <div class="row">
                    <div class="col-lg-5">
                        <img class="width-100" src="images/covid-image/testing.png" />
                    </div>

                    <div class="col-lg-7">
                        <span class="text-clr-red font-para-li">All visitors who feel unwell while on site must proceed to the nearest isolation room for assessment and COVID-19 testing, where required.
                        </span>
                        <br />
                        <br />

                        <span class="font-sm">If a stable case of illness is detected from a visitor presenting COVID-19 symptoms, 
                            such as a fever of 37.5˚C or above, cough, myalgia or fatigue, shortness of breath,
                            sore throat, runny nose, diarrhoea and nausea, headache, or loss of sense of smell 
                            or taste, the visitor will be requested to undertake a COVID-19 test.

                        </span>
                        <br />
                        <br />
                        <span class="font-sm">People  of  Determination  will  be  allowed  a  family member or  companion  to  accompany  them  during  any testing,
                            including  potential  transfer  to  the  Expo  2020 Emergency Centre,  or  off-site  facilities.  
                            Expo  staff  will  ensure  support  is  provided   to  visitors  who  may  experience  challenges   during  testing, 
                            including  those   accompanying  young  children.
                        </span>
                        <br />
                        <br />

                        <span class="font-sm">In  the  event  of  a  confirmed  case  from  a  visitor,  Dubai Health Authority  (DHA)  
                           will  lead  on  the  identification and  support  of  close  contacts  in  liaison  with  the Organiser.
                           Any  close  contacts  identified  will  be required  to  undertake  COVID-19  testing  and  
                           complete quarantine  requirements  as  specified  by  DHA.</span>
                        <br />
                        <br />
                        <span class="font-sm">Further  information  on  the  specific  patient  pathway for  visitors  following  confirmation  of  a  positive  case  or close  contact  can  be  provided  by  the  Expo  team. 
                        </span>
                        <br />
                        <br />
                        <span class="font-para text-uppercase">Expo 2020 Emergency Centre</span>
                        <br />
                        <br />

                        <span class="font-sm">The  Expo  2020  Emergency  Centre  (EEC)  is  located on the  Expo  site  and  operated  during  visitors  hours and  overnight  by  DHA.
                            DCAS  personnel  may  transfer suspected  cases  to  the  EEC  for  further  assessment,  or to  neighbouring  hospitals,  
                            depending  on  the  symptoms presented.</span>
                    </div>
                </div>
            </div>
        </section>--%>

        <%--<section>
            <div class="container-fullscreen marginleftright-6">
                <div class="row">
                    <div class="col-lg-6">
                        <span class="text-uppercase font-medium text-clr-red">FACE COVERING AND FACE MASKS</span>
                        <br />
                        <br />
                        <span class="font-para">The  wearing  of  a  face  covering  (fabric  masks)  or face  mask 
                            (surgical  face  mask)  is  a  key  measure  in preventing  potential
                            transmission  of  COVID-19.  Surgical type  masks  should  be  manufactured 
                            in  accordance with  the  design  specification  EN  14863  Type  1,  or  
                            an equivalent  standard.</span><br />
                        <span class="font-para">All  visitors  must  correctly  wear  a  face  covering  or face  mask  at  all  times, 
                            unless  they  have  a  medical exemption  approved  by  Dubai  Health Authority  (DHA).</span>
                        <br />
                        <br />
                        <span class="text-uppercase font-medium text-clr-red">Face Mask Exemptions</span>
                        <br />
                        <br />

                        <span class="font-para">Various  categories  of  people  are  eligible  for  a  face mask exemption  including</span>
                        <br />
                        <br />
                        <ul class="list-icon list-icon-circle list-icon-colored font-para-li " style="line-height: 140%;">
                            <li>Those suffering  from  fungal  dermatitis,  especially  if they  have  severe  symptoms  in  the  face  like  bleeding, itching  and  scaly  skin.</li>
                            <li>Those allergic  to  any  component  of  a  mask  (allergic dermatitis,  contact  dermatitis,  contact  urticaria). </li>
                            <li>Individuals  with  severe  herpes  simplex  infections  that affects  the  mouth,  nose  or  face.</li>
                            <li>Individuals  with  acute  and  uncontrolled  asthma.</li>
                            <li>People  of  Determination  who  have  mental  and psychological  conditions.</li>

                        </ul>
                        <br />

                        <span class="font-para">Applications  for  a  face  masks  exemption  can  be  made at  dxbpermit.gov.ae.   All  individuals  with  a  medical exemption, 
                            must  be  able  to  present  an  approved permit  from  DHA  on  request.  If  a  permit  cannot  be provided,  the  individual  
                            will  be  requested  to  wear  a face  mask  and,  if  they  are  not  willing  to  do  so,  required to  leave  the  site.
                        </span>
                        <br />
                        <span class="font-para">Training  is  provided  to  workforce  to  raise  awareness of  these  exemptions  and  how  to  deal  with  situations 
                            where  visitors  refuse  to  wear  a  face  mask.  Children under  the  age  of  6  years  old  are  not  required  to  
                            wear face  masks. 
                        </span>
                        <br />
                        <span class="font-para">A stock  of  spare  face  masks  is  maintained  at  each Arrivals  Plaza,  and  other  locations  across  site,
                            including ticket  sales  and  resolution  points,  visitor  information centres  and  food  and  beverage  areas, 
                            for  any  visitors who forget  to  bring  a  mask,  or  the  mask  is  damaged during  their  visit.
                        </span>
                        <br />
                    </div>
                    <div class="col-lg-6">

                        <div class="">
                            <img class="width-100" src="images/covid-image/mask.png" />
                        </div>
                        <div class="space"></div>
                        <span class="text-uppercase font-medium text-clr-red">Temporary Removal of  Masks</span>
                        <br />
                        <br />

                        <span class="font-para">There  are  a  number  of  situations  where  visitors  are permitted  to  remove  their  face  masks  temporarily. 
                            In these  cases,  masks  should  only  be  removed  for  a  short period  of  time,  with  social  distancing  of  2  metres 
                            to  be maintained  at  all  times</span>
                        <br />
                        <br />
                        <ul class="list-icon list-icon-circle list-icon-colored font-para-li " style="line-height: 140%;">
                            <li>Eating  or  drinking  in  designated  food  and  beverage areas,  providing  visitors  remain  seated  and  stationary. </li>
                            <li>Smoking in  designated  smoking  areas. </li>
                            <li>Undertaking  strenuous  physical  exercise  in designated  sports  and  wellbeing  areas.</li>
                            <li>Taking  selfies,  or  when  being  photographed  or videoed  by  others. 
                                Where  people  are  taking photographs  or  videos  of  others  the  photographer 
                                or videographer  should  be  wearing  a  mask  at  all  times.</li>

                        </ul>
                        <br />
                    </div>
                </div>
            </div>
        </section>--%>


        <%--<section class="bg-clr-blue">
            <div class="container-fullscreen marginleftright-6 text-white">

                


                <div class="row">
                    <div class="col-lg-6">
                        <span class="text-uppercase font-medium text-clr-gd">SOCIAL DISTANCING</span>
                        <br />
                        <br />

                        <span class="font-para">Visitors  are  responsible  for  complying  with  any instructions  provided  to  protect  
                            their  health  and  safety, and  must  ensure  that  social  distancing  requirements are  followed. 
                            The  following  measures  will  be implemented  to  manage  the  capacity  of  venues  and ensure  
                            social  distancing:</span>
                        <br />
                        <br />
                        <ul class="list-icon list-icon-circle list-icon-colored font-para-li " style="line-height: 140%;">
                            <li>Capacity  limits  for  venues  established,  with  signage to  indicate  the  maximum  number  of  visitors permitted  in  venues  and  spaces,  including  common areas  such  as  toilets  and  prayer  rooms.</li>
                            <li>Floor  markings  or  decals  applied  at  locations across  the  site  where  visitors  are  likely  to  queue  or congregate,  including  search  and  screen  areas,  food and  beverage  service,  ticket  sales  points  and  ticket resolution  points. </li>
                            <li>Seat  markers  or  decals  placed  on  alternative  seats and  benches  to  enable  social  distancing,  with  a minimum of  2  metres  distance  maintained  between tables  and  seats,  where  possible.  </li>
                            <li>Capacity  limits  established  in  transportation,  with regular  monitoring  of  compliance.</li>
                            <li>Hosts  deployed  in  areas  where  visitors  are  likely to  queue  or  congregate,  with  a  specific  focus  on popular  content  in  venues,  to  actively  manage  social distancing  and  maintain  the  movement  of  visitors.</li>

                        </ul>
                        <br />

                    </div>
                    <div class="col-lg-6">
                        <span class="text-uppercase font-medium text-clr-gd">Visitors  in  Groups</span>
                        <br />
                        <br />

                        <span class="font-para">Visitors  in  Groups Visitors  in  groups  who  arrive  at  Expo  2020  are  required to  comply  with  COVID-19  precautions,
                            including  social distancing  requirements  and  venue  capacity  limits, throughout  their  visit. </span>
                        <br />
                        <br />
                        <ul class="list-icon list-icon-circle list-icon-colored font-para-li " style="line-height: 140%;">
                            <li>Visitors  in  Groups Visitors  in  groups  who  arrive  at  Expo  2020  are  required to  comply  with  COVID-19  precautions,
                            including  social distancing  requirements  and  venue  capacity  limits, throughout  their  visit. </li>
                            <li>Visitor  group  sizes  should  not  exceed a  maximum of  15  people,  not  including additional  individuals  assigned  within  a support  bubble.</li>
                            <li>Group sizes  which  are  greater  than  15  visitors  should form  sub-groups  to  ensure  that  the  maximum  group size  
                                of  15  people  is  not  exceeded.  Sub-groups  should ensure  they  maintain  2  metres  social  distancing  from each  other  at  all  times.</li>
                            <li>Visitor  groups  who  require  a  group  photograph exceeding  the  maximum  group  size  of  15  people  
                                (for example  encompassing  multiple  sub-groups),  should approach  the  Organiser’s  staff  for  support 
                                to  ensure that  photographs  are  facilitated  safely.  Specific requirements  apply  to  the  management  
                                of  school groups.</li>
                        </ul>
                        <br />

                    </div>
                </div>
            </div>
        </section>--%>

        <%--<section class="">
            <div class="container-fullscreen marginleftright-6">
                <div class="row">
                    <div class="col-lg-6">
                        <span class="font-medium text-clr-red">PEOPLE OF DETERMINATION</span><br />
                        <br />
                        <br />
                        <span class="font-para">EXPO 2020 DUBAI COVID-19 GUIDE We are  committed  to  ensuring  that  COVID-19  does  not negatively  impact  or  exclude  different  guest  groups.
                            The  following  measures  are  implemented  to  ensure   the  protection  of  People  of  Determination  (PoDs):</span>
                        <br />
                        <br />
                        <ul class="list-icon list-icon-circle list-icon-colored font-para-li " style="line-height: 140%;">
                            <li>PoDs,  and  their  companions  to  be  provided  with  clear information  on  Expo  2020  COVID-19  precautions, and  what  it  means  for  them.</li>
                            <li>Information  to  be  readily  conveyed  to  those  with visual  and  hearing  impairments  and  other  physical and  sensory  disabilities.</li>
                            <li>Electronic  information  on  COVID-19  precautions  to be available  on  the  website  and  adapted  for  people with  sensory  disabilities. </li>
                            <li>Where  braille  and  hearing  enhancement  systems  are used  to  convey  information,  they  should  be  regularly sanitized  to  avoid  the  risk  of  transmission  between users. </li>
                            <li>Training  to  be  provided  to  workforce  to  address  any concerns  from  PoDs  related  to  COVID-19. </li>
                            <li>A  suitable  number  of  washrooms,  toilets  and  prayer rooms which  are  accessible  for  PoDs  to  be  provided, including  any  companions.</li>
                            <li>An  adequate  number  of  accessible  hand  sanitizers and  hand  washing  facilities  to  be  provided.</li>
                            <li>Dispensers  and  wipes  to  be  placed  in  accessible locations,  at  appropriate  heights,  easy  use,  and  clear information  provided  of  their  locations.</li>
                            <li>First  responders  and  Dubai  Corporation  for Ambulance  Services  (DCAS)  staff  to  be  trained  to deal  with  suspected  or  confirmed  cases  from  PoDs, including  neuro-diverse  conditions,  such  as  autism.</li>
                            <li>Within  enclosed  spaces  and  venues,  such  as auditoriums,  PoDs  must  not  be  unduly  disadvantaged by  social  distancing  and  seating  arrangements.</li>

                        </ul>
                    </div>
                    <div class="col-lg-6">
                        <ul class="list-icon list-icon-circle list-icon-colored font-para-li " style="line-height: 140%;">
                            <li>Venue  operators  to  ensure  adequate  seating spaces  are  provided  for  wheelchair  and  mobility scooter  users,  and  space  provided  to  enable  their companions  and  assistance  dogs  to  accompany them.</li>
                            <li>Sight  lines  should  not  be  compromised,  and  proximity maintained  to  signers,  speakers  (for  lipreaders), hearing  enhancement  systems,  and  captioning systems</li>
                            <li>PoDs,  and  their  companions,  must  not  be  unduly disadvantaged  by  social  distancing  and  seating arrangements  in  cafes,  bars  and  restaurants,  with adequate  seating  arrangements,  such  as  table heights  and  wheelchair  spaces  provided.</li>
                            <li>An  adequate  number  of  accessible  hand  sanitizers and  hand  washing  facilities  to  be  provided.</li>
                            <li>Dispensers  and  wipes  to  be  placed  in  accessible locations,  at  appropriate  heights,  easy  use,  and  clear information  provided  of  their  locations.</li>
                            <li>First  responders  and  Dubai  Corporation  for Ambulance  Services  (DCAS)  staff  to  be  trained  to deal  with  suspected  or  confirmed  cases  from  PoDs, including  neuro-diverse  conditions,  such  as  autism.</li>
                            <li>Within  enclosed  spaces  and  venues,  such  as auditoriums,  PoDs  must  not  be  unduly  disadvantaged by  social  distancing  and  seating  arrangements.</li>
                            <li>Venue  operators  to  ensure  adequate  seating spaces  are  provided  for  wheelchair  and  mobility scooter  users,  and  space  provided  to  enable  their companions  and  assistance  dogs  to  accompany them.</li>
                            <li>Sight  lines  should  not  be  compromised,  and  proximity maintained  to  signers,  speakers  (for  lipreaders), hearing  enhancement  systems,  and  captioning systems</li>
                            <li>PoDs,  and  their  companions,  must  not  be  unduly disadvantaged  by  social  distancing  and  seating arrangements  in  cafes,  bars  and  restaurants,  with adequate  seating  arrangements,  such  as  table heights  and  wheelchair  spaces  provided.</li>

                        </ul>
                    </div>
                </div>
            </div>
        </section>--%>
    </div>


   <script src="js/jquery.js"></script>
    <script src="js/functions.js"></script>
    <script src="js/commondatastore.js"></script>
    <script src="js/jqs.js"></script>


</asp:Content>
