<?php

namespace App\Http\Controllers;

use App\Http\Requests\CreateDefRequest;
use App\Http\Requests\UpdateDefRequest;
use App\Repositories\DefRepository;
use App\Http\Controllers\AppBaseController;
use Illuminate\Http\Request;
use Flash;
use Prettus\Repository\Criteria\RequestCriteria;
use Response;

class DefController extends AppBaseController
{
    /** @var  DefRepository */
    private $defRepository;

    public function __construct(DefRepository $defRepo)
    {
        $this->defRepository = $defRepo;
    }

    /**
     * Display a listing of the Def.
     *
     * @param Request $request
     * @return Response
     */
    public function index(Request $request)
    {
        $this->defRepository->pushCriteria(new RequestCriteria($request));
        $defs = $this->defRepository->all();

        return view('defs.index')
            ->with('defs', $defs);
    }

    /**
     * Show the form for creating a new Def.
     *
     * @return Response
     */
    public function create()
    {
        return view('defs.create');
    }

    /**
     * Store a newly created Def in storage.
     *
     * @param CreateDefRequest $request
     *
     * @return Response
     */
    public function store(CreateDefRequest $request)
    {
        $input = $request->all();

        $def = $this->defRepository->create($input);

        Flash::success('Def saved successfully.');

        return redirect(route('defs.index'));
    }

    /**
     * Display the specified Def.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function show($id)
    {
        $def = $this->defRepository->findWithoutFail($id);

        if (empty($def)) {
            Flash::error('Def not found');

            return redirect(route('defs.index'));
        }

        return view('defs.show')->with('def', $def);
    }

    /**
     * Show the form for editing the specified Def.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function edit($id)
    {
        $def = $this->defRepository->findWithoutFail($id);

        if (empty($def)) {
            Flash::error('Def not found');

            return redirect(route('defs.index'));
        }

        return view('defs.edit')->with('def', $def);
    }

    /**
     * Update the specified Def in storage.
     *
     * @param  int              $id
     * @param UpdateDefRequest $request
     *
     * @return Response
     */
    public function update($id, UpdateDefRequest $request)
    {
        $def = $this->defRepository->findWithoutFail($id);

        if (empty($def)) {
            Flash::error('Def not found');

            return redirect(route('defs.index'));
        }

        $def = $this->defRepository->update($request->all(), $id);

        Flash::success('Def updated successfully.');

        return redirect(route('defs.index'));
    }

    /**
     * Remove the specified Def from storage.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function destroy($id)
    {
        $def = $this->defRepository->findWithoutFail($id);

        if (empty($def)) {
            Flash::error('Def not found');

            return redirect(route('defs.index'));
        }

        $this->defRepository->delete($id);

        Flash::success('Def deleted successfully.');

        return redirect(route('defs.index'));
    }
}
