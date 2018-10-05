<li class="{{ Request::is('abcs*') ? 'active' : '' }}">
    <a href="{!! route('abcs.index') !!}"><i class="fa fa-edit"></i><span>Abcs</span></a>
</li>

<li class="{{ Request::is('thangmls*') ? 'active' : '' }}">
    <a href="{!! route('thangmls.index') !!}"><i class="fa fa-edit"></i><span>Thangmls</span></a>
</li>

<li class="{{ Request::is('categories*') ? 'active' : '' }}">
    <a href="{!! route('categories.index') !!}"><i class="fa fa-edit"></i><span>Categories</span></a>
</li>

