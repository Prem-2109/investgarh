/// <reference path="jquery.js" />

var ajax_url = window.location.origin + "/";
//var baseurlapi = "";
//var baseurl = "";


function setUrl() {
    return ajax_url;
}

function asynchAjax(ajax_object) {
    var data = $.ajax({
        type: 'POST',
        data: JSON.stringify({ '_jsonreq': ajax_object.data }),
        async: false,
        url: ajax_url + ajax_object.webservice + ajax_object.methodname,
        dataType: 'json',
        contentType: 'application/json; charset=utf-8',
        success: function (response) {
            successCallBack(ajax_object.key, JSON.parse(response.d));
        },
        error: function (error) {
            console.log(error);
        }
    });
}

function common_ajax_request(methodname, ajax_ws, key, data) {
    var _request = {};
    _request.methodname = methodname;
    _request.webservice = ajax_ws;
    _request.key = key;
    _request.data = data;
    asynchAjax(_request);
}


function asynchControllerAjax(ajax_object) {
    var data = $.ajax({
        type: 'POST',
        async: false,
        data: ajax_object.data,
        dataType: 'json',
        url: "/" + ajax_object.url,
        success: function (d) {
            successCallBack(ajax_object.key, d);
        },
        error: function (error) {
            alert("please try again...");

            console.log(error);
        }
    });

}

function common_api_ajax_request(ajax_ws, key, data) {

    var _request = {};
    _request.url = ajax_ws;
    _request.key = key;
    _request.data = data;
    asynchControllerAjax(_request);
}


function startLoader() {
    $("#id_load").show();
}

function stopLoader() {
    $("#id_load").hide();
}





