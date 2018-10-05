<?php

namespace App\Repositories;

use App\Models\Def;
use InfyOm\Generator\Common\BaseRepository;

/**
 * Class DefRepository
 * @package App\Repositories
 * @version September 28, 2018, 7:14 am UTC
 *
 * @method Def findWithoutFail($id, $columns = ['*'])
 * @method Def find($id, $columns = ['*'])
 * @method Def first($columns = ['*'])
*/
class DefRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'name'
    ];

    /**
     * Configure the Model
     **/
    public function model()
    {
        return Def::class;
    }
}
