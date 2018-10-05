<?php

namespace App\Http\Controllers;

use App\Http\Requests\CreateAbcRequest;
use App\Http\Requests\UpdateAbcRequest;
use App\Repositories\AbcRepository;
use App\Http\Controllers\AppBaseController;
use Illuminate\Http\Request;
use Flash;
use Prettus\Repository\Criteria\RequestCriteria;
use Response;

class AbcController extends AppBaseController
{
    /** @var  AbcRepository */
    private $abcRepository;

    public function __construct(AbcRepository $abcRepo)
    {
        $this->abcRepository = $abcRepo;
    }

    /**
     * Display a listing of the Abc.
     *
     * @param Request $request
     * @return Response
     */
    public function index(Request $request)
    {
        $this->abcRepository->pushCriteria(new RequestCriteria($request));
        $abcs = $this->abcRepository->all();

        return view('abcs.index')
            ->with('abcs', $abcs);
    }

    /**
     * Show the form for creating a new Abc.
     *
     * @return Response
     */
    public function create()
    {
        return view('abcs.create');
    }

    /**
     * Store a newly created Abc in storage.
     *
     * @param CreateAbcRequest $request
     *
     * @return Response
     */
    public function store(CreateAbcRequest $request)
    {
        $input = $request->all();

        $abc = $this->abcRepository->create($input);

        Flash::success('Abc saved successfully.');

        return redirect(route('abcs.index'));
    }

    /**
     * Display the specified Abc.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function show($id)
    {
        $abc = $this->abcRepository->findWithoutFail($id);

        if (empty($abc)) {
            Flash::error('Abc not found');

            return redirect(route('abcs.index'));
        }

        return view('abcs.show')->with('abc', $abc);
    }

    /**
     * Show the form for editing the specified Abc.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function edit($id)
    {
        $abc = $this->abcRepository->findWithoutFail($id);

        if (empty($abc)) {
            Flash::error('Abc not found');

            return redirect(route('abcs.index'));
        }

        return view('abcs.edit')->with('abc', $abc);
    }

    /**
     * Update the specified Abc in storage.
     *
     * @param  int              $id
     * @param UpdateAbcRequest $request
     *
     * @return Response
     */
    public function update($id, UpdateAbcRequest $request)
    {
        $abc = $this->abcRepository->findWithoutFail($id);

        if (empty($abc)) {
            Flash::error('Abc not found');

            return redirect(route('abcs.index'));
        }

        $abc = $this->abcRepository->update($request->all(), $id);

        Flash::success('Abc updated successfully.');

        return redirect(route('abcs.index'));
    }

    /**
     * Remove the specified Abc from storage.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function destroy($id)
    {
        $abc = $this->abcRepository->findWithoutFail($id);

        if (empty($abc)) {
            Flash::error('Abc not found');

            return redirect(route('abcs.index'));
        }

        $this->abcRepository->delete($id);

        Flash::success('Abc deleted successfully.');

        return redirect(route('abcs.index'));
    }
}
