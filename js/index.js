/// <reference path="commondatastore.js" />
/// <reference path="jquery.js" />

$(document).ready(function () {
    $('#close').click(function () {
        $("#modal-3").hide();
    });
    $("#register_new").click(function (e) {
        e.preventDefault();
        register();
    });

    $("#id_mining").prop("checked", true);

    $('.close').click(function () {
        $("#modal-2").removeClass("show");
        window.location.href = "https://www.investgarhchhattisgarh.com/";

    });

   


});


function successCallBack(key, data) {
    if (key == "Registration") {
        var html_text = "";
        $("#modal-2").addClass("show");
        $('#modal-2').attr('aria-modal', 'true');
        $('#modal-2').removeAttr('aria-hidden');
        $('#modal-2').css("display", "block");
        $('#modal-2').css("padding-right", "17px");
        html_text = html_text + "<p>Thank you for registering / your registration is successful etc , our dedicated relationship manager will get in touch with you.</p>";
        $(".modal-body").append(html_text);

    }
    else {
        var html_text = "";
        html_text = html_text + "<p>Try Again...!</p>";
        $(".modal-body").append(html_text);
        $('#modal-2').addClass("show");
        $('#modal-2').css("display", "block");
    }

}





function register() {

    var orgName = $("#id_org_name").val();
    var resName = $("#id_res_name").val();
    var mobile = $("#id_mobile").val();
    var mail = $("#id_mail").val();
    var message = $("#res_msg").val();
    var sector = document.querySelector("input[name=exampleRadios]:checked").value
    var terms = $('input#terms_conditions').is(':checked');
    if (orgName != "" && resName != "" && terms != "") {
        if (phonenumber(mobile)) {
            if (IsEmail(mail)) {
                var str_data = orgName + '$' + resName + '$' + mobile + '$' + mail + '$' + sector + '$' + message + "$";
                common_api_ajax_request("api/investReg", "Registration", { "data": str_data });
            } else {
                $("#error").text('Enter your Email Id');
                $("#id_mail").focus();
            }
        }
        else {
            $("#error").text('Enter your Mobile No ');
            $("#id_mobile").focus();
        }
    }
    else {
        if (orgName == "") {
            $("#error").text('Enter your Organization Name');
            $("#id_org_name").focus();

        }
        else if (resName == "") {
            $("#error").text('Enter your Representative Name');
            $("#id_res_name").focus();
        }
        else if (mobile == "") {
            $("#error").text('Enter your Mobile No ');
            $("#id_mobile").focus();
        }
        else if (mail == "") {
            $("#error").text('Enter your Email Id');
            $("#id_mail").focus();
        }
        else if (terms == "") {
            $("#error").text('* Accepts the terms and conditions');

        }
    }

}



function phonenumber(inputtxt) {
    var phoneno = /^\d{10}$/;
    if (phoneno.test(inputtxt)) {
        return true;
    }
    else {
        return false;
    }
}

function IsEmail(email) {
    var regex = /^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    if (!regex.test(email)) {
        return false;
    } else {
        return true;
    }
}





function org_name() {
    var org_name = $("#id_org_name").val();
    if (org_name.length <= 1) {
        $("#id_org_name").addClass("is-invalid");
        $('#id_org_name').attr('aria-describedby', 'username-error');
        $('#id_org_name').attr('aria-invalid', 'true');
        $("#id_org_name").attr("style", "border-color: #dc3545 !important");
        $('#username-error').css("display", "block");
        return false;
    }
    else {
        $("#id_org_name").removeClass("is-invalid");
        $("#id_org_name").addClass("is-valid");
        $('#id_org_name').attr('aria-invalid', 'false');
        $("#stu_name").attr("style", "border-color: #28a745 !important");
        $('#username-error').css("display", "none");

        return true;
    }

}

function res_name() {
    var res_name = $("#id_res_name").val();
    if (res_name.length <= 2) {
        $("#id_res_name").addClass("is-invalid");
        $('#id_res_name').attr('aria-describedby', 'username-error');
        $('#id_res_name').attr('aria-invalid', 'true');
        $("#id_res_name").attr("style", "border-color: #dc3545 !important");
        $('#school-error').css("display", "block");
        return false;
    }
    else {
        $("#id_res_name").removeClass("is-invalid");
        $("#id_res_name").addClass("is-valid");
        $('#id_res_name').attr('aria-invalid', 'false');
        $("#id_res_name").attr("style", "border-color: #28a745 !important");
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




