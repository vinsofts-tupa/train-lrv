<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Localization extends Model
{
    protected $table = 'localization';

    protected $fillable = ['in_code','en','vn','page'];
}
