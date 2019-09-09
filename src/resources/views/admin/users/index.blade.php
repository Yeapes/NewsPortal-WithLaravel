@extends("layouts.admin")

@section('content')
 @if(Session::has('deleted_user'))
<p class="alert alert-danger">{{session('deleted_user')}}</p>
 @endif
<div class="card shadow">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">User Table</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
              @if($users)
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>

                      <th>Image</th>
                      <th>Name</th>
                      <th>Email</th>
                      <th>Role</th>
                      <th>Creted</th>                    
                      <th>Status</th>
                      <th>Action</th>
                    </tr>
                  </thead>
                  <tfoot>
                  @foreach($users as $user)
                    <tr>
                      <td><img height="50" src="{{$user->photo ? $user->photo->file : "http://placehold.it/200x200"}}" alt=""/></td>

                    <td>{{$user->name}}</td>
                      <td>{{$user->email}}</td>
                      <td>
                      {{
                      $user->role ? $user->role->name : "No Role Yet" 
                      }}
                      </td>
                      <td>{{$user->created_at->diffForHumans() }}</td>
                      <td>{{$user->is_active == 1 ? "active": "Deactive"}}</td>
                    <td>
                      <a href="{{route('admin.users.edit', $user->id)}}" class="btn btn-info">Edit</a>

                      {{Form::open(['method'=>'DELETE','action'=>['AdminUsersController@destroy',$user->id]])}}
                      {{Form::submit('delete', ['class'=>'btn btn-danger btn-user btn-inline'])}} 
                      {{Form::close()}} 

                    </td>
                    </tr>
                    @endforeach
                  </tfoot>
                  <tbody>       
                  </tbody>
                </table>
                @endif
              </div>
            </div>
          </div>

@stop