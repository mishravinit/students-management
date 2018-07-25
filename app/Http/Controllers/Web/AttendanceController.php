<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Institution;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use function PHPSTORM_META\type;

class AttendanceController extends Controller
{
    //
    public function make()
    {
        $user = Auth::user();
        if ($user->isTeacher()) {
            $institutions[] = $user->teacher->institution;
        } else {
            $institutions = Institution::all();
        }

        $day = new Carbon('now');

        return view('attendance.make', compact('day', 'institutions'));
    }
}
