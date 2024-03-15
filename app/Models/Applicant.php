<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Applicant extends Model
{
    use HasFactory;
    protected $table = 'applicants';
    protected $fillable = [
        'first-name',
        'last-name',
        'gender',
        'dob',
        'email',
        'phone_no',
        'qualification',
        'total_exp',
        'roles',
        'skills',
    ];
    protected $casts = [
        'skills' => 'array', // Ensure 'skills' is cast to an array
    ];
}
