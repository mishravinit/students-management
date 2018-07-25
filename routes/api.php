<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

//Route::middleware('auth:api')->get('/user', function (Request $request) {
//    return $request->user();
//});

//Route::resource('course', 'ApiCourseController', ['only' => ['show']]);
//Route::post('enrollments/inout', ApiEnrollmentController::class . '@inOut')->name('enrollment.inout');

Route::group(['prefix' => 'v1'], function () {
    Route::resource('course', 'CourseController');
    Route::resource('class', 'KlassController');
    Route::resource('enrollment', 'EnrollmentController');
    Route::resource('attendance', 'AttendanceController');

    Route::post('enrollments/inout', EnrollmentController::class . '@inOut')->name('enrollment.inout');
    Route::post('class/students/{klass}', KlassController::class . '@students')->name('class.students');
});