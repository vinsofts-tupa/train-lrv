<?php

namespace App\Repositories;

use App\Models\Abc;
use InfyOm\Generator\Common\BaseRepository;

/**
 * Class AbcRepository
 * @package App\Repositories
 * @version September 28, 2018, 7:17 am UTC
 *
 * @method Abc findWithoutFail($id, $columns = ['*'])
 * @method Abc find($id, $columns = ['*'])
 * @method Abc first($columns = ['*'])
*/
class AbcRepository extends BaseRepository
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
        return Abc::class;
    }
}
