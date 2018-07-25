<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Teacher extends Model
{
    public function classes()
    {
        return $this->hasMany(Klass::class);
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function institution()
    {
        return $this->belongsTo(Institution::class);
    }
}
