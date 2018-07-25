<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class StudentResource extends JsonResource
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
            'document' => $this->document,
            'email' => $this->email,
            'street' => $this->address_street,
            'number' => $this->address_number,
            'other' => $this->address_other,
            'neighborhood' => $this->address_neighborhood,
            'city' => $this->address_city,
            'state' => $this->address_state,
            'postalcode' => $this->address_postalcode,
            'country' => $this->address_country,
            'phone' => $this->phone_number,
        ];
    }
}
