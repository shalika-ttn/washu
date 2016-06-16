function bindFtpEnable() {
    $('#ftpEnabled').on('change', function () {

        if (($(this).prop('checked'))) {
            $('div.fileNameFormat').removeClass('isFtp');
            $('div.api').addClass('isFtp');
        }
        else {
            $('div.fileNameFormat').addClass('isFtp');
            $('div.api').removeClass('isFtp');
        }
    });


}

function bindSelectMethod() {
    $('.methodType').on('change', function () {
    });
}

function addMoreRow() {
    $('.postalcode').append("<div><input type='text' name='postalCodes' required=''/><img src='../images/cross.png' onclick='removeDiv(this)'/></div>");

}

function removeDiv(input) {
    $(input).parent('div').remove();
}

$(document).ready(function () {
    bindFtpEnable();
    bindSelectMethod();
    bindIsSettingModified();

})


function bindIsSettingModified() {
    $('#isSettingModified').on('change', function () {

        if (($(this).prop('checked'))) {
            $('div.modifySetting').removeClass('isSettingModified');
            $('div.modifySetting .required').attr("required","true");
        }
        else {
            $('div.modifySetting').addClass('isSettingModified');
            $('div.modifySetting .required').removeAttr("required");
        }
    });


}