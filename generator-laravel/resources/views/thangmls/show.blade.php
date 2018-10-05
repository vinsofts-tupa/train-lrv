@extends('layouts.app')

@section('content')
    <section class="content-header">
        <h1>
            Thangml
        </h1>
    </section>
    <div class="content">
        <div class="box box-primary">
            <div class="box-body">
                <div class="row" style="padding-left: 20px">
                    @include('thangmls.show_fields')
                    <a href="{!! route('thangmls.index') !!}" class="btn btn-default">Back</a>
                </div>
            </div>
        </div>
    </div>
@endsection
