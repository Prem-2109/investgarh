/// <reference path="commondatastore.js" />
/// <reference path="jquery.js" />

$(document).ready(function () {
    $("#register_new").click(function (e) {
        e.preventDefault();
        register();
    });
    $('.close').click(function () {
        $("#modal-2").removeClass("show");
        window.location.href = "";

    });
});


//var checkboxes = document.querySelectorAll("input[id='defaultCheck1']");
//function checkAll(mycheckbox) {
//    if (mycheckbox.checked == true) {
//        checkboxes.forEach(function (defaultCheck1) {
//            defaultCheck1.checked = true;
//        });
//    }
//    else {
//        checkboxes.forEach(function (defaultCheck1) {
//            defaultCheck1.checked = false;

//        });
//    }
//}

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
    var orgName = $("#id_org_name").val();
    var resName = $("#id_res_name").val();
    var designation = $("#id_desc").val();
    var mobile = $("#id_mobile").val();
    var mail = $("#id_mail").val();
    //var areaofinsterest = $("#areaofinterest").val();
    //var iamN = $("#Id_iam").val();
    var country = $("#id_country").val();

    if (orgName != "" && resName != "" && designation != "" && country != "") {
        if (phonenumber(mobile)) {
            if (IsEmail(mail)) {
                var str_data = orgName + '$' + resName + '$' + designation + '$' + mobile + '$' + mail + '$' + country;
                common_api_ajax_request("api/investReg", "Registration", { "data": str_data });
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
        if (orgName == "") {
            $("#error").text('Enter your Organization Name');
            $("#id_org_name").focus();
        }
        else if (resName == "") {
            $("#error").text('Enter your Representative Name');
            $("#id_res_name").focus();
        }
        else if (designation == "") {
            $("#error").text('Enter your Designation');
            $("#designation").focus();
        }
        else if (mobile == "") {
            $("#error").text('Enter your Mobile No ');
            $("#id_mobile").focus();
        }
        else if (mail == "") {
            $("#error").text('Enter your Email Id');
            $("#contactmailid").focus();
        }
        else if (country == "") {
            $("#error").text('Enter your Country');
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
