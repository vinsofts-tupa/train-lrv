@extends('layouts.app')

@section('content')
    <section class="content-header">
        <h1>
            Abc
        </h1>
   </section>
   <div class="content">
       @include('adminlte-templates::common.errors')
       <div class="box box-primary">
           <div class="box-body">
               <div class="row">
                   {!! Form::model($abc, ['route' => ['abcs.update', $abc->id], 'method' => 'patch']) !!}

                        @include('abcs.fields')

                   {!! Form::close() !!}
               </div>
           </div>
       </div>
   </div>
@endsection