<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Quản Lý Học Sinh</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  </head>
  <body>
    <div class="container" style="margin-top:20px">
      <div class="panel panel-primary">
        <div class="panel-heading">
          <h3 class="panel-title">Sửa</h3>
        </div>
        <div class="panel-body">
          <form method="post" action="{{ url($lang.'/update/'.$data->id) }}">
            <input type="hidden" name="_token" value="{!! csrf_token() !!}" />
            <div class="form-group">
              <label for="lblHoTen">InCode</label>
              <input type="text" class="form-control" name="txtIncode" value="{!! old('txtIncode',isset($data) ? $data['in_code'] : null) !!}" />
            </div>
            <div class="form-group">
              <label for="lblToan">En</label>
              <input type="text" class="form-control" name="txtEn" value="{!! old('txtEn',isset($data) ? $data['en'] : null) !!}" />
            </div>
            <div class="form-group">
              <label for="lblToan">Vn</label>
              <input type="text" class="form-control" name="txtVn" value="{!! old('txtEn',isset($data) ? $data['vn'] : null) !!}" />
            </div>
            <div class="form-group">
              <label for="lblToan">Page</label>
              <input type="text" class="form-control" name="txtPage" value="{!! old('txtPage',isset($data) ? $data['page'] : null) !!}" />
            </div>
            <button type="submit" class="btn btn-default">Sửa</button>
          </form>
        </div>
      </div>
    </div>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
  </body>
</html>