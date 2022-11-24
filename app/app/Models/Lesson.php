<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Lesson extends Model
{
    use HasFactory;

    protected $table = 'timetable';

    protected $fillable = [
        'start_time',
        'length_minutes',
        'subject_id',
        'class_id',
        'teacher_id',
    ];
}
