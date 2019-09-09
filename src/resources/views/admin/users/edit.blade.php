@extends("layouts.admin")

@section('content')

<div class="card shadow">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Add New Category</h6>
        </div>
        <div class="card-body">
            @include('partials.formerror')
            {{Form::model($user,['method'=>'PATCH','action'=>['AdminUsersController@update',$user->id], 'files'=>true])}}
            <div class="form-group">
                {{Form::label("name", 'Name')}}
                {{Form::text('name', null, ['class'=>'form-control'])}} 
            </div> 
            <div class="form-group">
                {{Form::label("email", 'Email')}}
                {{Form::email('email', null, ['class'=>'form-control'])}} 
            </div> 
            <div class="form-group">
                {{Form::label("password", 'Password')}}
                {{Form::password('password', ['class'=>'form-control'])}} 
            </div> 
            <div class="form-group">
                {{Form::label("role", 'Role')}}
                {{Form::select('role_id', [''=>'Select Role'] + $roles, null, ['class'=>'form-control'])}} 
            </div> 
            <div class="form-group">
                {{Form::label("is_active", 'Status')}}
                {{Form::select('is_active', ['0'=>'Select Status','1'=>'Active','0'=>'Deactive'], null, ['class'=>'form-control'])}} 
            </div>
            <div class="form-group">
                    {{Form::label("file", 'Upload')}}
                    {{Form::file('file', ['class'=>'form-control'])}} 
            </div> 
            <div class="form-group"> 
                    {{Form::submit('submit', ['class'=>'btn btn-primary btn-user btn-block'])}} 
            </div> 

            {{Form::close()}} 
         
        </div>
    </div>
@stop