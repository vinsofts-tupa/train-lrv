<form action="{{url('kiemtra')}}" method="post">
	@csrf
	Email: <input type="text" name="email"> <br>
	Password: <input type="text" name="password">
	<input type="submit" value="Submit">
</form>