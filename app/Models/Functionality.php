<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Functionality extends Model
{
    public $fillable = ['function','status'];
    use HasFactory;
}
