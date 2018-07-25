require('./../bootstrap');

$(document).ready(function() {

    // const apiEndpoint = 'http://studentsmanagement.test/api/';

    $('#form-enrolment-inout-params').submit(function(e) {
        e.stopPropagation();
        e.preventDefault();

        const url = `${apiEndpoint}/enrollments/inout`;
        const loading = $('#voyager-loader');

        loading.fadeIn();
        $('tbody[name=enrollment-tbody]').empty();

        $.ajax({
            url: url,
            type: "POST",
            dataType : "json",
            async: true,
            contentType: 'application/json',
            data: JSON.stringify({
                type: $('select[name=type]').val(),
                institution: $('select[name=institution]').val(),
                from: $('input[name=from]').val(),
                to: $('input[name=to]').val(),
                _token: $('input[name=_token]').val()
            })
        }).done(function(response) {
            response.data.forEach((enrollment) => {
                let inout;
                if ($('select[name=type]').val() == 'income') {
                    inout = moment(enrollment.beginning);
                } else {
                    inout = moment(enrollment.end);
                }

                const row = `
                            <tr>
                                <td>${enrollment.student_name}</td>
                                <td>${enrollment.institution_name}</td>
                                <td>${inout.format('DD/MM/YYYY')}</td>
                            </tr>
                        `;

                $('tbody[name=enrollment-tbody]').append(row);
            });

            $('th[name=td-type]').empty().append($('select[name=type] option:selected').text());
            $('div[name=enrollment-table]').show();
        }).fail(function(xhr, status, errorThrown) {
            console.log("Error: " + errorThrown);
            console.log("Status: " + status);
            console.dir(xhr);

            $('div[name=enrollment-table]').hide();
        }).always(function(xhr, status) {
            loading.fadeOut();
        });
    });

    $('button[name=hide-params]').click((e) => {
        if ($('button[name=hide-params] span[name=hide-icon]').hasClass('voyager-double-up')) {
            $('button[name=hide-params] span[name=hide-icon]').removeClass('voyager-double-up');
            $('button[name=hide-params] span[name=hide-icon]').addClass('voyager-double-down');
            $('#form-enrolment-inout-params').hide();
        } else {
            $('button[name=hide-params] span[name=hide-icon]').removeClass('voyager-double-down');
            $('button[name=hide-params] span[name=hide-icon]').addClass('voyager-double-up');
            $('#form-enrolment-inout-params').show();
        }
    });
});