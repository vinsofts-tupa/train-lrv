<form action="{{url('check')}}" method="post">
	@csrf
	<input type="text" name="email">
	<input type="text" name="password">
	<input type="checkbox" name="remember">
	<input type="submit" value="Submit">
</form>