@extends("layouts.admin")

@section('content')

<div class="card shadow">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Add New Category</h6>
        </div>
        <div class="card-body">
            @include('partials.formerror')
            {{Form::model($post,['method'=>'PATCH','action'=>['AdminPostsController@update', $post->id], 'files'=>true])}}
            <div class="form-group">
                {{Form::label("post_title", 'Post Title')}}
                {{Form::text('post_title', null, ['class'=>'form-control'])}} 
            </div> 
            <div class="form-group">
                {{Form::label("post_description", 'Post Description')}}
                {{Form::textarea('post_description', null, ['class'=>'form-control'])}} 
            </div> 
             <div class="form-group">
                {{Form::label("role", 'Role')}}
                {{Form::select('role_id', [''=>'Select Role'] + $roles, null, ['class'=>'form-control'])}} 
            </div> 
             <div class="form-group">
                {{Form::label("post_cat_id", 'Post Categories')}}
                {{Form::select('post_cat_id', [''=>'Select Cat'] + $categories, null, ['class'=>'form-control'])}} 
            </div>  
            <div class="form-group">
                    <img height="50" src="{{$post->photo ? $post->photo->file : "http://placehold.it/200x200"}}" alt=""/>
                    {{Form::label("file", 'Post Image')}}
                    {{Form::file('file', ['class'=>'form-control'])}} 
            </div>
             
            <div class="form-group"> 
                    {{Form::submit('submit', ['class'=>'btn btn-primary btn-user btn-block'])}} 
            </div> 

            {{Form::close()}} 
         
        </div>
    </div>


@stop