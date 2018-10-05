<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Localization;
use App;
use DB;
use Storage;


class LocalizationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($lang)
    {
        $data = Localization::all();
        App::setLocale($lang);
        return view('localization',compact(['data','lang']));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create($lang)
    {
        return view('v.add',compact('lang'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request,$lang)
    {
        $data = new Localization;
        $data->in_code = $request->txtIncode;
        $data->en = $request->txtEn;
        $data->vn = $request->txtVn;
        $data->page = $request->txtPage;
        $data->save();
        return redirect($lang.'/localization');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($lang, $id)
    {
        $data = Localization::find($id);
        return view('v.edit',compact('data','lang'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$lang,$id)
    {
        
        $data = Localization::find($id);
        $data->in_code = $request->txtIncode;
        $data->en = $request->txtEn;
        $data->vn = $request->txtVn;
        $data->page = $request->txtPage;
        $data->save();
        return redirect($lang.'/localization');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function delete($lang,$id)
    {
        $data = Localization::destroy($id);
        // DB::table('localization') -> delete($id);
        return redirect($lang.'/localization');
    }

    public function capnhat($lang){
        $data = Localization::all();
        $trans_en_string = '<?php return[';
        $trans_vn_string = '<?php return[';
        foreach($data as $trans){
            $trans_en_string .= '"' . $trans->in_code . '"' . ' => ' . '"' . $trans->en .'"' .',';
            $trans_vn_string .= '"' . $trans->in_code . '"' . ' => ' . '"' . $trans->vn .'"' .',';
        }
        $trans_en_string .='];';
        $trans_vn_string .='];';
        Storage::disk('lang')->put('en/noidung.php',$trans_en_string);
        Storage::disk('lang')->put('vn/noidung.php',$trans_vn_string);
        return redirect($lang.'/localization');
    }
}
 