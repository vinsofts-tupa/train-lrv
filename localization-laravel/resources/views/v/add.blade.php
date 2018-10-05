<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Quản Lý Học Sinh</title>
    <link type="text/css" href="{!! url('public/restful/css/bootstrap.min.css') !!}" rel="stylesheet">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  </head>
  <body>
    <div class="container" style="margin-top:20px">
      <div class="panel panel-primary">
        <div class="panel-heading">
          <h3 class="panel-title">Thêm</h3>
        </div>
        <div class="panel-body">
          <form method="POST" action="{{url($lang.'/store')}}">
            <input type="hidden" name="_token" value="{!! csrf_token() !!}" />
            <div class="form-group">
              <label for="lblHoTen">InCode</label>
              <input type="text" class="form-control" name="txtIncode" />
            </div>
            <div class="form-group">
              <label for="lblToan">En</label>
              <input type="text" class="form-control" name="txtEn" />
            </div>
            <div class="form-group">
              <label for="lblToan">Vn</label>
              <input type="text" class="form-control" name="txtVn" />
            </div>
            <div class="form-group">
              <label for="lblToan">Page</label>
              <input type="text" class="form-control" name="txtPage" />
            </div>
            <button type="submit" class="btn btn-default">Thêm</button>
          </form>
        </div>
      </div>
    </div>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
  </body>
</html>