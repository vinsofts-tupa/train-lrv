<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Quan li san pham</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
  <table>
    <tr>
      <th>Id</th>
      <th>Name</th>
      <th>Price</th>
      <th></th>
    </tr>
    @foreach($data as $rows)
    <tr>
      <td>{{$rows->id}}</td>
      <td>{{$rows->name}}</td>
      <td>{{$rows->price}}</td>
      <td><a class="btn btn-primary glyphicon glyphicon-edit" href="{{route('resource.edit',$rows['id'])}}">Edit</a></td>
    </tr>
    @endforeach
  </table>
</body>
</html>

