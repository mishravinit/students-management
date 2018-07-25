<?php

namespace App\Widgets;

use Carbon\Carbon;
use Illuminate\Support\Facades\DB;
use TCG\Voyager\Widgets\BaseDimmer;

class StudentsIncomeWeek extends BaseDimmer
{
    protected $config = [];

    public function run()
    {
        $monday = Carbon::now()->startOfWeek();
        $sunday = Carbon::now()->endOfWeek();

        $count = DB::table('enrollments')
            ->whereBetween('beginning', [$monday, $sunday])
            ->count();

        $string = $count == 1 ? 'Student' : 'Students';
        $title = "{$count} {$string}";

        $string = strtolower($string);
        $text = "You have $count $string income this week.";

        return view('voyager::dimmer', array_merge($this->config, [
            'icon'   => 'voyager-group',
            'title'  => $title,
            'text'   => $text,
            'button' => [
                'text' => 'More',
                'link' => route('reports.enrollment-inout', ['type' => 'income']),
            ],
            'image' => asset('storage/others/widget-backgrounds/students-income.jpg'),
        ]));
    }
}
