/// <reference path="commondatastore.js" />
/// <reference path="jquery.js" />

$(document).ready(function () {
    $("#id_submit").click(function (e) {
        e.preventDefault();
        register();
    });

    $('.close').click(function () {
        $("#modal-2").removeClass("show");
        window.location.href = "";

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
        html_text = html_text + "<p>Thank you for your interest in Invest Chhattisgarh - Our team will touch base with you shortly. </p>";
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

    var fullname = $("#id_fullname").val();
    var org_name = $("#id_orgname").val();
    var designation = $("#id_designation").val();
    var mail = $("#id_email").val();
    var mobile = $("#id_mobile").val();
    var country = $("#id_country").val();
   
    if (fullname != "" && org_name != "" && designation != "" && country != "") {
        if (phonenumber(mobile)) {
            if (IsEmail(mail)) {
                var str_data = fullname + '$' + org_name + '$' + designation + '$' + mail + '$' + mobile + '$' + country + "$";
                common_api_ajax_request("api/investReg", "Registration", { "data": str_data });
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
        if (fullname == "") {
            $("#error").text('Enter your Full Name');
            $("#id_fullname").focus();

        }
        else if (org_name == "") {
            $("#error").text('Enter your Organization Name');
            $("#id_orgname").focus();
        }
        else if (designation == "") {
            $("#error").text('Enter your Designation');
            $("#id_designation").focus();
        }
        else if (mobile == "") {
            $("#error").text('Enter your Mobile No ');
            $("#id_mobile").focus();
        }
        else if (mail == "") {
            $("#error").text('Enter your Email Id');
            $("#id_mail").focus();
        }
        else if (country == "") {
            $("#error").text('Select Your Country');
            $("#id_country").focus();
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



