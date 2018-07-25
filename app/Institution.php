<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Institution extends Model
{
    public function enrollments()
    {
        return $this->hasMany(Enrollment::class);
    }

    public function classes()
    {
        return $this->hasMany(Klass::class);
    }

    public function teachers()
    {
        return $this->hasMany(Teacher::class);
    }
}
