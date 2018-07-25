<?php

Route::group(['prefix' => 'admin'], function () {
    Route::get('enrollment-inout/{type?}', EnrollmentController::class . '@inOut')->name('reports.enrollment-inout');
});