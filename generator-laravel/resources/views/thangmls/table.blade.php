<table class="table table-responsive" id="thangmls-table">
    <thead>
        <tr>
            <th>Name</th>
            <th colspan="3">Action</th>
        </tr>
    </thead>
    <tbody>
    @foreach($thangmls as $thangml)
        <tr>
            <td>{!! $thangml->name !!}</td>
            <td>
                {!! Form::open(['route' => ['thangmls.destroy', $thangml->id], 'method' => 'delete']) !!}
                <div class='btn-group'>
                    <a href="{!! route('thangmls.show', [$thangml->id]) !!}" class='btn btn-default btn-xs'><i class="glyphicon glyphicon-eye-open"></i></a>
                    <a href="{!! route('thangmls.edit', [$thangml->id]) !!}" class='btn btn-default btn-xs'><i class="glyphicon glyphicon-edit"></i></a>
                    {!! Form::button('<i class="glyphicon glyphicon-trash"></i>', ['type' => 'submit', 'class' => 'btn btn-danger btn-xs', 'onclick' => "return confirm('Are you sure?')"]) !!}
                </div>
                {!! Form::close() !!}
            </td>
        </tr>
    @endforeach
    </tbody>
</table>