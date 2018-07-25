require('../bootstrap');

$(document).ready(function() {

    $('input[name=check_all]').change(function() {
        $('input[name=students]').each(function() {
            $(this).prop('checked', !$(this).prop('checked'))
        });

        $('button[type=submit]').prop('disabled', false);
    });

    $('form[name=attendance]').submit(function(e) {
        e.preventDefault();
        e.stopPropagation();

        const url = `${apiEndpoint}/attendance`;
        const loading = $('#voyager-loader');

        students = $('input[name=students]').map((i, value) => {
            return $(value).prop('checked') ? $(value).val() : false;
        });

        console.log(students);
        return;

        loading.fadeIn();
        $.ajax({
            url: url,
            type: "POST",
            dataType : "json",
            async: true,
            data: $(this).serialize()
        }).done(function(response) {
            console.log(response);
        }).fail(function(xhr, status, errorThrown) {
            console.log("Error: " + errorThrown);
            console.log("Status: " + status);
            console.dir(xhr);
        }).always(function() {
            loading.fadeOut();
        });
    });

});