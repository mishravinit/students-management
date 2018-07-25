<?php

Route::get('/', function () {
    return view('welcome');
});


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();

    Route::get('attendance/make', AttendanceController::class . '@make')->name('attendance.make');
});
