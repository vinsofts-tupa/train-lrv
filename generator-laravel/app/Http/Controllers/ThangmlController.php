<?php

namespace App\Http\Controllers;

use App\Http\Requests\CreateThangmlRequest;
use App\Http\Requests\UpdateThangmlRequest;
use App\Repositories\ThangmlRepository;
use App\Http\Controllers\AppBaseController;
use Illuminate\Http\Request;
use Flash;
use Prettus\Repository\Criteria\RequestCriteria;
use Response;

class ThangmlController extends AppBaseController
{
    /** @var  ThangmlRepository */
    private $thangmlRepository;

    public function __construct(ThangmlRepository $thangmlRepo)
    {
        $this->thangmlRepository = $thangmlRepo;
    }

    /**
     * Display a listing of the Thangml.
     *
     * @param Request $request
     * @return Response
     */
    public function index(Request $request)
    {
        $this->thangmlRepository->pushCriteria(new RequestCriteria($request));
        $thangmls = $this->thangmlRepository->all();

        return view('thangmls.index')
            ->with('thangmls', $thangmls);
    }

    /**
     * Show the form for creating a new Thangml.
     *
     * @return Response
     */
    public function create()
    {
        return view('thangmls.create');
    }

    /**
     * Store a newly created Thangml in storage.
     *
     * @param CreateThangmlRequest $request
     *
     * @return Response
     */
    public function store(CreateThangmlRequest $request)
    {
        $input = $request->all();

        $thangml = $this->thangmlRepository->create($input);

        Flash::success('Thangml saved successfully.');

        return redirect(route('thangmls.index'));
    }

    /**
     * Display the specified Thangml.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function show($id)
    {
        $thangml = $this->thangmlRepository->findWithoutFail($id);

        if (empty($thangml)) {
            Flash::error('Thangml not found');

            return redirect(route('thangmls.index'));
        }

        return view('thangmls.show')->with('thangml', $thangml);
    }

    /**
     * Show the form for editing the specified Thangml.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function edit($id)
    {
        $thangml = $this->thangmlRepository->findWithoutFail($id);

        if (empty($thangml)) {
            Flash::error('Thangml not found');

            return redirect(route('thangmls.index'));
        }

        return view('thangmls.edit')->with('thangml', $thangml);
    }

    /**
     * Update the specified Thangml in storage.
     *
     * @param  int              $id
     * @param UpdateThangmlRequest $request
     *
     * @return Response
     */
    public function update($id, UpdateThangmlRequest $request)
    {
        $thangml = $this->thangmlRepository->findWithoutFail($id);

        if (empty($thangml)) {
            Flash::error('Thangml not found');

            return redirect(route('thangmls.index'));
        }

        $thangml = $this->thangmlRepository->update($request->all(), $id);

        Flash::success('Thangml updated successfully.');

        return redirect(route('thangmls.index'));
    }

    /**
     * Remove the specified Thangml from storage.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function destroy($id)
    {
        $thangml = $this->thangmlRepository->findWithoutFail($id);

        if (empty($thangml)) {
            Flash::error('Thangml not found');

            return redirect(route('thangmls.index'));
        }

        $this->thangmlRepository->delete($id);

        Flash::success('Thangml deleted successfully.');

        return redirect(route('thangmls.index'));
    }
}
