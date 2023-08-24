/// <reference path="commondatastore.js" />
/// <reference path="jquery.js" />

$(document).ready(function () {
    $("#register_button").click(function (e) {
        e.preventDefault();
        register();
    });
    $('.close').click(function () {
        $("#modal-2").removeClass("show");
        window.location.href = "https://investgarhchhattisgarh.com/index.html";

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
        html_text = html_text + "<p>Shortly, we have sent you an email with all the details to attend the Online Investor Meet.</p>";
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
    var fullname = $("#id_full_name").val();
    var org_name = $("#id_org_name").val();
    var designation = $("#id_desc").val();
    var mail = $("#id_mail").val();
    var mobile = $("#id_mobile").val();
    var city = $("#id_city").val();
    
    if (fullname != "" && org_name != "" && designation != "" && city != "") {
        if (phonenumber(mobile)) {
            if (IsEmail(mail)) {
                var str_data = fullname + '$' + org_name + '$' + designation + '$' + mobile + '$' + mail + '$' + city;
                common_api_ajax_request("api/register", "Registration", { "data": str_data });
            } else {
                $('#id_mail').addClass("change_email");
                $(".error").text("Enter valid email");
                $('#id_mail').focus();
            }
        } else {
            $('#id_mobile').addClass("change_email");
            $(".error").text("Enter 10 digit mobile number");
            $('#id_mobile').focus();
        }
    }
    else {
        if (fullname == "") {
            $("#error").text('Enter your Organization Name');
            $("#id_full_name").focus();
        }
        else if (org_name == "") {
            $("#error").text('Enter your Representative Name');
            $("#id_org_name").focus();
        }
        else if (designation == "") {
            $("#error").text('Enter your Designation');
            $("#id_desc").focus();
        }
        else if (mobile == "") {
            $("#error").text('Enter your Mobile No ');
            $("#id_mobile").focus();
        }
        else if (mail == "") {
            $("#error").text('Enter your Email Id');
            $("#id_mail").focus();
        }
        else if (city == "") {
            $("#error").text('Enter your City');
            $("#id_city").focus();
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
