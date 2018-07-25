<?php

namespace App\Http\Controllers\Reports;

use App\Http\Controllers\Controller;
use App\Institution;
use Carbon\Carbon;
use Illuminate\Http\Request;

class EnrollmentController extends Controller
{
    //
    public function inOut($type=null, Request $request)
    {
        $from = Carbon::now()->startOfWeek();
        $to = Carbon::now()->endOfWeek();
        $institutions = Institution::all(['id', 'name'])->toArray();

        return view('reports.enrollment.inout', compact('from', 'to', 'type', 'institutions'));
    }
}
