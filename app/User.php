<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Support\Facades\DB;

class User extends \TCG\Voyager\Models\User
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    public function teacher()
    {
        return $this->hasOne(Teacher::class);
    }

    public function isTeacher()
    {
        $teacher = DB::table('teachers')->where('user_id', '=', $this->id)->get();
        if (!$teacher->count()) {
            return false;
        }

        return true;
    }

    public function student()
    {
        return $this->hasOne(Student::class);
    }

    public function isStudent()
    {
        $student = DB::table('students')->where('user_id', '=', $this->id)->get();
        if (!$student->count()) {
            return false;
        }

        return true;
    }
}
