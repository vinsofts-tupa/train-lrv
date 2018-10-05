<?php

namespace App\Repositories;

use App\Models\Generate;
use InfyOm\Generator\Common\BaseRepository;

/**
 * Class GenerateRepository
 * @package App\Repositories
 * @version September 28, 2018, 7:03 am UTC
 *
 * @method Generate findWithoutFail($id, $columns = ['*'])
 * @method Generate find($id, $columns = ['*'])
 * @method Generate first($columns = ['*'])
*/
class GenerateRepository extends BaseRepository
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
        return Generate::class;
    }
}
