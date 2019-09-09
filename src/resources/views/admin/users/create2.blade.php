@extends("layouts.admin")

@section('content')

<div class="card shadow">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Add New Category</h6>
        </div>
        <div class="card-body">
            @include('partials.formerror')
        <form class="user" action="{{route('users.store')}}" method="POST" enctype="multipart/form-data" >
@csrf
                <div class="form-group row">
                    <div class="col-sm-12">
                        <input type="text" name="name" class="form-control form-control-user" placeholder="User name">
                    </div>
                </div>
                <div class="form-group row">
                        <div class="col-sm-12">
                            <input type="email" name="email" class="form-control form-control-user" placeholder="User name">
                        </div>
                    </div>
                    <div class="form-group row">
                            <div class="col-sm-12">
                                <input type="password" name="password" class="form-control form-control-user" placeholder="User name">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="role">Role</label>
                            @if($roles) 
                            <select name="role_id" class="form-control" id="role">
                            <option>Choose Role</option>
                            @foreach ($roles as $role) 
                            <option value="{{$role->id}}">{{$role->name}}</option> 
                            @endforeach
                            </select> 
                            @endif
                          </div>

                          <div class="form-group">
                                <label for="is_active">Example select</label>
                                <select name="is_active" class="form-control" id="is_active">
                                  <option>Select Status</option>
                                  <option value="1">Active</option>
                                  <option value="0">Deactive</option> 
                                </select>
                         </div>
                         <div class="form-group">
                                <label for="file">Example file input</label>
                                <input name="file" type="file" class="form-control-file" id="file">
                         </div> 
                         
                <input type="submit" class="btn btn-primary btn-user btn-block" value="Add New Category" name="add_cat">

                <hr> 
            </form>
        </div>
    </div>
@stop