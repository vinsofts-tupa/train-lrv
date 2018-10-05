<form action="{{url('token')}}" method="post">
	@csrf
	Token: <input type="text" name="token">
	<input type="submit" value="submit">
</form>