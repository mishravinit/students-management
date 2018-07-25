<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Klass extends Model
{
    protected $table = 'classes';

    public function institution()
    {
        return $this->belongsTo(Institution::class);
    }

    public function students()
    {
        return $this->belongsToMany(Student::class, 'class_students');
    }

    public function teacher()
    {
        return $this->belongsTo(Teacher::class);
    }
}
