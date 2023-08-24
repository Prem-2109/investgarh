/// <reference path="commondatastore.js" />
/// <reference path="jquery.js" />
$(document).ready(function () {
    stopLoader();
    $("#newsroom-hide").hide();
    $("#webinar_submit").click(function (e) {
        e.preventDefault();
        startLoader();
        setTimeout(function () {
            btnSubmit();
        }, 1000);
    });
    $('.close').click(function () {
        $("#modal-2").removeClass("show");
        window.location.href = "https://www.investgarhchhattisgarh.com/";

    });

});
function successCallBack(key, data) {

    if (key == "signRegistration") {

        var html_text = "";
        $("#modal-2").addClass("show");
        $('#modal-2').attr('aria-modal', 'true');
        $('#modal-2').removeAttr('aria-hidden');
        $('#modal-2').css("display", "block");
        $('#modal-2').css("padding-right", "17px");
        html_text = html_text + "<span>Thank you for registering / your registration is successful, our dedicated relationship manager will get in touch with you.</span>";
        $(".modal-body").append(html_text);

    } else {
        var html_text = "";
        html_text = html_text + "<p>Try Again...!</p>";
        $(".modal-body").append(html_text);
        $('#modal-2').addClass("show");
        $('#modal-2').css("display", "block");
    }
}

function btnSubmit() {
    var fullname = $("#stu_name").val();
    var org_name = $("#ins_name").val();
    var designation = $("#txt_studies").val();
    var mail = $("#contact_email").val();
    var mobile = $("#contact").val();
    var country = $("#stu_loca").val();
    var attendingas = $("#dob").val();
    var message = $("#res_msg").val();
    var checks = document.getElementsByName("sectorpre");
    var str = '';
    for (i = 0; i < 22; i++) {
        if (checks[i].checked === true) {
            str += checks[i].value + " ";
        }
    }

    var networks = document.getElementsByName("networkpre");
    var ntw = '';
    for (i = 0; i < 5; i++) {
        if (networks[i].checked === true) {
            ntw += networks[i].value + " ";
        }
    }

    var additional = document.getElementsByName("additional");
    var addsup = '';
    for (i = 0; i < 3; i++) {
        if (additional[i].checked === true) {
            addsup += additional[i].value + " ";
        }
    }
    var terms = $('input#terms_conditions').is(':checked');
    $.each($('form :input'), function () {
        $(this).blur().change();
    });

    if (fullname != "" && org_name != "" && designation != "" && country != "" && attendingas != "" && str != "" && ntw != "" && terms != "") {
        /*if (phonenumber(mobile))*/
        if (mobile != "") {
            if (IsEmail(mail)) {
                var str_data = fullname + '$' + org_name + '$' + designation + '$' + mail + '$' + mobile + '$' + country + "$" + attendingas + "$" + str + "$" + ntw + "$" + addsup + "$" + message + "$";
                common_api_ajax_request("api/signup", "signRegistration", { "data": str_data });
            } else {
                $("#error").text('Enter your Email Id');
                $("#id_email").focus();
            }
        }
        else {
            $("#error").text('Enter your Mobile No ');
            $("#id_mobile").focus();
        }
    }
    else {
        if (str == "") {
            $("#error-1").text('Please Select Your Sector preference');
        }

        if (ntw == "") {
            $("#error-2").text('Please Select Who would you like to network with');

        }
        
        if (terms == "") {
            $("#error").text('* Accepts the terms and conditions');

        }
    }
    stopLoader();
}

function student_name() {
    var stu_name = $("#stu_name").val();
    if (stu_name.length <= 1) {
        $("#stu_name").addClass("is-invalid");
        $('#stu_name').attr('aria-describedby', 'username-error');
        $('#stu_name').attr('aria-invalid', 'true');
        $("#stu_name").attr("style", "border-color: #dc3545 !important");
        $('#username-error').css("display", "block");
        return false;
    }
    else {
        $("#stu_name").removeClass("is-invalid");
        $("#stu_name").addClass("is-valid");
        $('#stu_name').attr('aria-invalid', 'false');
        $("#stu_name").attr("style", "border-color: #28a745 !important");
        $('#username-error').css("display", "none");

        return true;
    }

}

function institute() {
    var ins_name = $("#ins_name").val();
    if (ins_name.length <= 2) {
        $("#ins_name").addClass("is-invalid");
        $('#ins_name').attr('aria-describedby', 'username-error');
        $('#ins_name').attr('aria-invalid', 'true');
        $("#ins_name").attr("style", "border-color: #dc3545 !important");
        $('#school-error').css("display", "block");
        return false;
    }
    else {
        $("#ins_name").removeClass("is-invalid");
        $("#ins_name").addClass("is-valid");
        $('#ins_name').attr('aria-invalid', 'false');
        $("#ins_name").attr("style", "border-color: #28a745 !important");
        $('#school-error').css("display", "none");
        return true;

    }
}

function student_city() {
    var student_loc = $("#stu_loca").val();
    if (student_loc.length <= 2) {
        $("#stu_loca").addClass("is-invalid");
        $('#stu_loca').attr('aria-describedby', 'city-error');
        $('#stu_loca').attr('aria-invalid', 'true');
        $("#stu_loca").attr("style", "border-color: #dc3545 !important");
        $('#city-error').css("display", "block");
        return false;
    }
    else {
        $("#stu_loca").removeClass("is-invalid");
        $("#stu_loca").addClass("is-valid");
        $('#stu_loca').attr('aria-invalid', 'false');
        $("#stu_loca").attr("style", "border-color: #28a745 !important");
        $('#city-error').css("display", "none");
        return true;

    }
}
function student_dob() {
    var dob = $("#dob").val();
    if (dob.length <= 2) {
        $("#dob").addClass("is-invalid");
        $('#dob').attr('aria-describedby', 'dateofbirth-error');
        $('#dob').attr('aria-invalid', 'true');
        $("#dob").attr("style", "border-color: #dc3545 !important");
        $('#dateofbirth-error').css("display", "block");
        return false;
    }
    else {
        $("#dob").removeClass("is-invalid");
        $("#dob").addClass("is-valid");
        $('#dob').attr('aria-invalid', 'false');
        $("#dob").attr("style", "border-color: #28a745 !important");
        $('#dateofbirth-error').css("display", "none");
        return true;

    }
}

function student_email() {
    var email = $("#contact_email").val();
    if (!IsEmail(email)) {
        $("#contact_email").addClass("is-invalid");
        $('#contact_email').attr('aria-describedby', 'email-error');
        $('#contact_email').attr('aria-invalid', 'true');
        $("#contact_email").attr("style", "border-color: #dc3545 !important");
        $('#email-error').css("display", "block");
        return false;
    }
    else {
        $("#contact_email").removeClass("is-invalid");
        $("#contact_email").addClass("is-valid");
        $('#contact_email').attr('aria-invalid', 'false');
        $("#contact_email").attr("style", "border-color: #28a745 !important");
        $('#email-error').css("display", "none");
        return true;

    }
}

function contactno() {
    var contact_no = $("#contact").val();
    if (contact_no.length < 6) {
        $("#contact").addClass("is-invalid");
        $('#contact').attr('aria-describedby', 'telephone-error');
        $('#contact').attr('aria-invalid', 'true');
        $("#contact").attr("style", "border-color: #dc3545 !important");
        $('#telephone-error').css("display", "block");
        return false;
    }
    else {
        $("#contact").removeClass("is-invalid");
        $("#contact").addClass("is-valid");
        $('#contact').attr('aria-invalid', 'false');
        $("#contact").attr("style", "border-color: #28a745 !important");
        $('#telephone-error').css("display", "none");
        return true;
    }
}
function student_gender() {

    var gender = $('#txt_gender :selected').text();
    if (gender != 'Male' && gender != 'Female') {
        $("#txt_gender").addClass("is-invalid");
        $('#txt_gender').attr('aria-describedby', 'gender-error');
        $('#txt_gender').attr('aria-invalid', 'true');
        $("#txt_gender").attr("style", "border-color: #dc3545 !important");
        $('#gender-error').css("display", "block");
        return false;
    }
    else {
        $("#txt_gender").removeClass("is-invalid");
        $("#txt_gender").addClass("is-valid");
        $('#txt_gender').attr('aria-invalid', 'false');
        $("#txt_gender").attr("style", "border-color: #28a745 !important");
        $('#gender-error').css("display", "none");
        return true;
    }
}
function studies() {
    var studies = $("#txt_studies").val();
    if (studies.length <= 2) {
        $("#txt_studies").addClass("is-invalid");
        $('#txt_studies').attr('aria-describedby', 'course-error');
        $('#txt_studies').attr('aria-invalid', 'true');
        $("#txt_studies").attr("style", "border-color: #dc3545 !important");
        $('#course-error').css("display", "block");
        return false;
    }
    else {
        $("#txt_studies").removeClass("is-invalid");
        $("#txt_studies").addClass("is-valid");
        $('#txt_studies').attr('aria-invalid', 'false');
        $("#txt_studies").attr("style", "border-color: #28a745 !important");
        $('#course-error').css("display", "none");
        return true;
    }
}

//function phonenumber(inputtxt) {
//    var phoneno = /^\d{10}$/;
//    if (phoneno.test(inputtxt)) {
//        return true;
//    }
//    else {
//        return false;
//    }
//}

function IsEmail(email) {
    var regex = /^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    if (!regex.test(email)) {
        return false;
    } else {
        return true;
    }
}


