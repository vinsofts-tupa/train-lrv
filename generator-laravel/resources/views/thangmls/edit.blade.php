@extends('layouts.app')

@section('content')
    <section class="content-header">
        <h1>
            Thangml
        </h1>
   </section>
   <div class="content">
       @include('adminlte-templates::common.errors')
       <div class="box box-primary">
           <div class="box-body">
               <div class="row">
                   {!! Form::model($thangml, ['route' => ['thangmls.update', $thangml->id], 'method' => 'patch']) !!}

                        @include('thangmls.fields')

                   {!! Form::close() !!}
               </div>
           </div>
       </div>
   </div>
@endsection