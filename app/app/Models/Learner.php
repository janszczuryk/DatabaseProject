<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Learner extends Model
{
    use HasFactory;

    protected $table = 'learners';

    protected $fillable = [
        'name',
        'lastname',
        'email',
        'password',
        'pesel',
        'class_id',
    ];
}
