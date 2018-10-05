<?php

namespace App\Http\Controllers;

use App\Http\Requests\CreateGenerateRequest;
use App\Http\Requests\UpdateGenerateRequest;
use App\Repositories\GenerateRepository;
use App\Http\Controllers\AppBaseController;
use Illuminate\Http\Request;
use Flash;
use Prettus\Repository\Criteria\RequestCriteria;
use Response;

class GenerateController extends AppBaseController
{
    /** @var  GenerateRepository */
    private $generateRepository;

    public function __construct(GenerateRepository $generateRepo)
    {
        $this->generateRepository = $generateRepo;
    }

    /**
     * Display a listing of the Generate.
     *
     * @param Request $request
     * @return Response
     */
    public function index(Request $request)
    {
        $this->generateRepository->pushCriteria(new RequestCriteria($request));
        $generates = $this->generateRepository->all();

        return view('generates.index')
            ->with('generates', $generates);
    }

    /**
     * Show the form for creating a new Generate.
     *
     * @return Response
     */
    public function create()
    {
        return view('generates.create');
    }

    /**
     * Store a newly created Generate in storage.
     *
     * @param CreateGenerateRequest $request
     *
     * @return Response
     */
    public function store(CreateGenerateRequest $request)
    {
        $input = $request->all();

        $generate = $this->generateRepository->create($input);

        Flash::success('Generate saved successfully.');

        return redirect(route('generates.index'));
    }

    /**
     * Display the specified Generate.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function show($id)
    {
        $generate = $this->generateRepository->findWithoutFail($id);

        if (empty($generate)) {
            Flash::error('Generate not found');

            return redirect(route('generates.index'));
        }

        return view('generates.show')->with('generate', $generate);
    }

    /**
     * Show the form for editing the specified Generate.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function edit($id)
    {
        $generate = $this->generateRepository->findWithoutFail($id);

        if (empty($generate)) {
            Flash::error('Generate not found');

            return redirect(route('generates.index'));
        }

        return view('generates.edit')->with('generate', $generate);
    }

    /**
     * Update the specified Generate in storage.
     *
     * @param  int              $id
     * @param UpdateGenerateRequest $request
     *
     * @return Response
     */
    public function update($id, UpdateGenerateRequest $request)
    {
        $generate = $this->generateRepository->findWithoutFail($id);

        if (empty($generate)) {
            Flash::error('Generate not found');

            return redirect(route('generates.index'));
        }

        $generate = $this->generateRepository->update($request->all(), $id);

        Flash::success('Generate updated successfully.');

        return redirect(route('generates.index'));
    }

    /**
     * Remove the specified Generate from storage.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function destroy($id)
    {
        $generate = $this->generateRepository->findWithoutFail($id);

        if (empty($generate)) {
            Flash::error('Generate not found');

            return redirect(route('generates.index'));
        }

        $this->generateRepository->delete($id);

        Flash::success('Generate deleted successfully.');

        return redirect(route('generates.index'));
    }
}
