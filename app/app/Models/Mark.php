<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Mark extends Model
{
    use HasFactory;
    
    protected $table = 'marks';

    protected $fillable = [
        'value',
        'weight',
        'subject_id',
        'teacher_id',
        'learner_id',
    ];
}
