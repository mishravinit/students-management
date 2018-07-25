<?php

namespace App\Http\Resources\Reports;

use Illuminate\Http\Resources\Json\JsonResource;

class EnrollmentInOutResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'student_id' => $this->student->id,
            'student_name' => $this->student->name,
            'course_id' => $this->course->id,
            'course_name' => $this->course->name,
            'institution_id' => $this->institution->id,
            'institution_name' => $this->institution->name,
            'beginning' => $this->beginning,
            'end' => $this->end,
        ];
    }
}
