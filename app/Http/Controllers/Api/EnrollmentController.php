<?php

namespace App\Http\Controllers\Api;

use App\Enrollment;
use App\Http\Controllers\Controller;
use App\Http\Resources\Reports\EnrollmentInOutResource;
use Carbon\Carbon;
use Illuminate\Http\Request;

class EnrollmentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    /**
     * API for Enrollments in/out report
     *
     * @param Request $request
     * @return array
     */
    public function inOut(Request $request)
    {
        $params = $request->all();

        $from = Carbon::createFromFormat('Y-m-d', $params['from']);
        $to = Carbon::createFromFormat('Y-m-d', $params['to']);
        $where = [];

        $institution = $params['institution'];
        if ($institution != 0) {
            $where = array_merge($where, ['institution_id' => $institution]);
        }

        $column = 'beginning';
        if ($params['type'] === 'outcome') {
            $column = 'end';
        }

        $enrollments = Enrollment::query()
            ->where($where)
            ->whereBetween($column, [$from->format('Y-m-d'), $to->format('Y-m-d')])
            ->get();

        return EnrollmentInOutResource::collection($enrollments);
    }
}
