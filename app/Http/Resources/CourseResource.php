<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class CourseResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'name' => $this->name,
            'duration_time' => $this->duration_time,
            'duration_type' => $this->duration_type,
            'attendece' => $this->attendece,
        ];
    }
}
