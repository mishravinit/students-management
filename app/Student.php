<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Student extends Model
{
    public function enrollments()
    {
        return $this->hasMany(Enrollment::class);
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
