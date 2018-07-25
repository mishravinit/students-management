<?php

namespace App\Widgets;

use Carbon\Carbon;
use Illuminate\Support\Facades\DB;
use TCG\Voyager\Widgets\BaseDimmer;

class StudentsOutcomeWeek extends BaseDimmer
{
    protected $config = [];

    public function run()
    {
        $monday = Carbon::now()->startOfWeek();
        $sunday = Carbon::now()->endOfWeek();

        $count = DB::table('enrollments')
            ->whereBetween('end', [$monday, $sunday])
            ->count();

        $string = $count == 1 ? 'Student' : 'Students';
        $title = "{$count} {$string}";

        $string = strtolower($string);
        $text = "You have $count $string outcome this week.";

        return view('voyager::dimmer', array_merge($this->config, [
            'icon'   => 'voyager-group',
            'title'  => $title,
            'text'   => $text,
            'button' => [
                'text' => 'More',
                'link' => route('reports.enrollment-inout', ['type' => 'outcome']),
            ],
            'image' => asset('storage/others/widget-backgrounds/students-outcome.jpg'),
        ]));
    }
}