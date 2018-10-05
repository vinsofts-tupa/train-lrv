<?php

namespace App\Repositories;

use App\Models\Thangml;
use InfyOm\Generator\Common\BaseRepository;

/**
 * Class ThangmlRepository
 * @package App\Repositories
 * @version September 28, 2018, 7:28 am UTC
 *
 * @method Thangml findWithoutFail($id, $columns = ['*'])
 * @method Thangml find($id, $columns = ['*'])
 * @method Thangml first($columns = ['*'])
*/
class ThangmlRepository extends BaseRepository
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
        return Thangml::class;
    }
}
