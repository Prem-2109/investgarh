$(document).ready(function () {


});

var jsonArray = ["empdiv_1", "empdiv_2", "empdiv_3", "empdiv_4", "empdiv_5", "id-sect-energy", "id-sect-Tourism",
    "id-sect-manu", "id-sect-edu", "id-sect-water", "id-sect-entertainment", "id-sect-financial", "id-sect-food",
    "id-sect-mobi", "id-sect-sports", "id-sect-media", "id-sect-tech", "id-sect-health"];


var jsonimgarrayhover = ["", "images/sector-image/energycolor.png", "images/sector-image/Tourism.png"];
var jsonimageiconid = ["", "id-icon-energy"]

/*Cement*/
$("#id-sect-energy").mouseover(function () {
    actCommonMouseOver('id-sect-energy', "id-icon-energy", "images/sector-new/Cement-C.png", "/images/sector-new/sector-bg/Cement.jpg");
    fadeOthers("id-sect-energy");

});
$("#id-sect-energy").mouseout(function () {

    actCommonMouseOut("id-sect-energy", "id-icon-energy", "images/sector-new/Cement-W.png", "");
    resettoOrginal();
});
/*Tourism*/
$("#id-sect-Tourism").mouseover(function () {
    actCommonMouseOver('id-sect-Tourism', "id-icon-Tourism", "images/sector-image/Tourism_Color.png", "/images/sector-image/Tourism.jpg");
    fadeOthers("id-sect-Tourism");
});
$("#id-sect-Tourism").mouseout(function () {

    actCommonMouseOut("id-sect-Tourism", "id-icon-Tourism", "images/sector-image/Tourism.png", "");
    resettoOrginal();
});

/*emptyDic*/

$("#id-sect-Tourism1").mouseout(function () {

    actCommonMouseOut("id-sect-Tourism", "id-icon-Tourism", "images/sector-image/Tourism.png", "");
    resettoOrginal();
});

/*Automotive*/
$("#id-sect-manu").mouseover(function () {
    actCommonMouseOver('id-sect-manu', "id-icon-manu", "images/sector-new/Automotive-C.png", "/images/sector-new/sector-bg/Automotive.jpg");
    fadeOthers("id-sect-manu");
});

$("#id-sect-manu").mouseout(function () {

    actCommonMouseOut("id-sect-manu", "id-icon-manu", "images/sector-new/Automotive-W.png", "");
    resettoOrginal();
});


/*Defence-Manufacturing*/

$("#id-sect-edu").mouseover(function () {
    actCommonMouseOver('id-sect-edu', "id-icon-edu", "images/sector-new/Defence-Manufacturing-C.png", "/images/sector-new/sector-bg/Defence-Manufacturing.jpg");
    fadeOthers("id-sect-edu");
});

$("#id-sect-edu").mouseout(function () {

    actCommonMouseOut("id-sect-edu", "id-icon-edu", "images/sector-new/Defence-Manufacturing-W.png", "");
    resettoOrginal();
});
/*Heavy-Engineering*/

$("#id-sect-water").mouseover(function () {
    actCommonMouseOver('id-sect-water', "id-icon-water", "images/sector-new/Heavy-Engineering-C.png", "/images/sector-new/sector-bg/Heavy-Engineering.jpg");
    fadeOthers("id-sect-water");
});

$("#id-sect-water").mouseout(function () {
    actCommonMouseOut("id-sect-water", "id-icon-water", "images/sector-new/Heavy-Engineering-W.png", "");
    resettoOrginal();
});


/*Electronics*/
$("#id-sect-entertainment").mouseover(function () {
    actCommonMouseOver('id-sect-entertainment', "id-icon-entertainment", "images/sector-new/Electronics-C.png", "/images/sector-new/sector-bg/Electronics.jpg");
    fadeOthers("id-sect-entertainment");
});

$("#id-sect-entertainment").mouseout(function () {
    actCommonMouseOut("id-sect-entertainment", "id-icon-entertainment", "images/sector-new/Electronics-W.png", "");
    resettoOrginal();
});


/*IT*/
$("#id-sect-financial").mouseover(function () {
    actCommonMouseOver('id-sect-financial', "id-icon-financial", "images/sector-new/IT-C.png", "/images/sector-image/TECHNOLOGY-AND-DIGITAL.jpg");
    fadeOthers("id-sect-financial");
});

$("#id-sect-financial").mouseout(function () {
    actCommonMouseOut("id-sect-financial", "id-icon-financial", "images/sector-new/IT-W.png", "");
    resettoOrginal();
});


/*Agriculture*/
$("#id-sect-food").mouseover(function () {
    actCommonMouseOver('id-sect-food', "id-icon-food", "images/sector-image/fOOD_Color.png", "/images/sector-new/sector-bg/Agriculture-and-Allied-Industries.jpg");
    fadeOthers("id-sect-food");
});

$("#id-sect-food").mouseout(function () {
    actCommonMouseOut("id-sect-food", "id-icon-food", "images/sector-image/fOOD.png", "");
    resettoOrginal();
});

/*Food-Processing*/
$("#id-sect-health").mouseover(function () {
    actCommonMouseOver('id-sect-health', "id-icon-health", "images/sector-new/Food-Processing-C.png", "/images/sector-new/sector-bg/Food-pro.jpg");
    fadeOthers("id-sect-health");
});

$("#id-sect-health").mouseout(function () {
    actCommonMouseOut("id-sect-health", "id-icon-health", "images/sector-new/Food-Processing-W.png", "");
    resettoOrginal();
});



/*Renewable-Energy*/
$("#id-sect-mobi").mouseover(function () {
    actCommonMouseOver('id-sect-mobi', "id-icon-mobi", "images/sector-new/Renewable-Energy-C.png", "/images/sector-new/sector-bg/Renewable-Energy.jpg");
    fadeOthers("id-sect-mobi");
});

$("#id-sect-mobi").mouseout(function () {
    actCommonMouseOut("id-sect-mobi", "id-icon-mobi", "images/sector-new/Renewable-Energy-W.png", "");
    resettoOrginal();
});


/*Non-Renewable-Energy*/
$("#id-sect-sports").mouseover(function () {
    actCommonMouseOver('id-sect-sports', "id-icon-sports", "images/sector-new/Non-Renewable-Energy-C.png", "/images/sector-new/sector-bg/Non-Renewable-Energy.jpg");
    fadeOthers("id-sect-sports");
});

$("#id-sect-sports").mouseout(function () {
    actCommonMouseOut("id-sect-sports", "id-icon-sports", "images/sector-new/Non-Renewable-Energy-W.png", "");
    resettoOrginal();
});

/*Pharmaceuticals*/
$("#id-sect-media").mouseover(function () {
    actCommonMouseOver('id-sect-media', "id-icon-media", "images/sector-new/Pharmaceuticals-C.png", "/images/sector-new/sector-bg/Pharmaceuticals.jpg");
    fadeOthers("id-sect-media");
});

$("#id-sect-media").mouseout(function () {
    actCommonMouseOut("id-sect-media", "id-icon-media", "images/sector-new/Pharmaceuticals-W.png", "");
    resettoOrginal();
});


/*biotechnology*/
$("#id-sect-tech").mouseover(function () {
    actCommonMouseOver('id-sect-tech', "id-icon-tech", "images/sector-new/biotechnology-C.png", "/images/sector-new/sector-bg/biotechnology.jpg");
    fadeOthers("id-sect-tech");
});

$("#id-sect-tech").mouseout(function () {
    actCommonMouseOut("id-sect-tech", "id-icon-tech", "images/sector-new/biotechnology-W.png", "");
    resettoOrginal();
});


function actCommonMouseOver(mtlid, iconid, iconimage, sectionimg) {
    $("#" + iconid).attr('src', iconimage);
    $("#" + mtlid).css("background-color", "#f9f7f2");
    $("#" + mtlid).css("color", "#000");
    $("#" + mtlid).css("transform", "scale(1.2)");
    $("#imgsector").css("background-image", "none");
    $("#imgsector").css("background-image", "url(" + sectionimg + ")");

    $("#imgsector").animate({
        opacity: 1,
    });

}

function actCommonMouseOut(mtlid, iconid, iconimage, sectionimg) {

    $("#" + iconid).attr('src', iconimage);
    $("#" + mtlid).css("background-color", "#000");
    $("#" + mtlid).css("color", "#000");
    $("#" + mtlid).css("transform", "scale(1)");
    $("#" + mtlid).css("color", "#fff");
    $("#imgsector").css("background-image", "none");
    $("#imgsector").animate({
        opacity: 0,
    });
    $("#imgsector").stop();

}




function fadeOthers(ctlid) {
    for (var i = 0; i < jsonArray.length; i++) {
        if (jsonArray[i] != ctlid) {
            $("#" + jsonArray[i]).css('opacity', '0.1');
            $("#" + jsonArray[i]).css("transform", "scale(0.75)");
        }
    }
}


function resettoOrginal() {
    for (var i = 0; i < jsonArray.length; i++) {
        console.log(jsonArray[i]);
        $("#" + jsonArray[i]).css('opacity', '1');
        $("#" + jsonArray[i]).css("transform", "scale(1)");
    }
}




function onSetCommon() {

}

/*Toursim*/

function resetSectors() {
    $("#id-icon-energy").attr('src', 'images/sector-image/icon-energy.png');
    $("#section-bg").css("background", "none");
    $("#section-bg").css("background-color", "#f9f7f2");

    $("#emptydiv").css("opacity", "1");
    $("#emptydiv").css("background-color", "#000");
    $("#emptydiv").css("border", "none");


    $("#id-sect-energy").css("opacity", "1");
    $("#id-sect-energy").css("background-color", "#000");
    $("#id-sect-energy").css("border", "none");

    $("#id-icon-energy").attr('src', 'images/sector-image/Tourism.png');
    $("#id-sect-Tourism").css("background-color", "#000");
    $("#id-sect-Tourism").css("border", "none");

}
