<?php

namespace App\Models;

use Eloquent as Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Class Category
 * @package App\Models
 * @version September 28, 2018, 7:40 am UTC
 *
 * @property string name
 * @property string description
 * @property integer news_id
 * @property integer product_id
 */
class Category extends Model
{
    // use SoftDeletes;

    public $table = 'categories';
    public $timestamps = false;

    protected $dates = ['deleted_at'];


    public $fillable = [
        'name',
        'description',
        'news_id',
        'product_id'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'name' => 'string',
        'description' => 'string',
        'news_id' => 'integer',
        'product_id' => 'integer'
    ];

    /**
     * Validation rules
     *
     * @var array
     */
    public static $rules = [
        
    ];
}
public function construct(){
    private $user = $co
}