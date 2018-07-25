<?php

namespace App\Http\Resources\Api;

use Illuminate\Http\Resources\Json\JsonResource;

class KlassStudentsResource extends JsonResource
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
            'name' => $this->name,
            'institution_id' => $this->institution->id,
            'institution_name' => $this->institution->name,
            'teacher_id' => $this->teacher->id,
            'teacher_name' => $this->teacher->name,
            'students' => $this->students,
        ];
    }
}
