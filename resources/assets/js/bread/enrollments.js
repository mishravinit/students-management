require('../bootstrap');

$(document).ready(function() {

    let course = null;

    // const apiEndpoint = 'http://studentsmanagement.test/api/v1';

    $('select[name=course_id]').change(function(e) {
        const url = `${apiEndpoint}/course/${e.target.value}`;
        $.ajax({
            url: url,
            type: "GET",
            dataType : "json",
            async: true
        }).done(function(response) {
            course = response.data;
            if ($('input[name=beginning]').val()) {
                const end = moment($('input[name=beginning]').val(), 'YYYY-MM-DD').add(course.duration_time, course.duration_type);
                $('input[name=end]').val(end.format('YYYY-MM-DD'));
            }
        }).fail(function(xhr, status, errorThrown) {
            console.log("Error: " + errorThrown);
            console.log("Status: " + status);
            console.dir(xhr);
        });
    });

    $('input[name=beginning]').change(function(e) {
        if (course !== null) {
            const end = moment(e.target.value, 'YYYY-MM-DD').add(course.duration_time, course.duration_type);
            $('input[name=end]').val(end.format('YYYY-MM-DD'));
        }
    });

});