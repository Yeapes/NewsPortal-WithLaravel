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
              {{csrf_field()}}
              <div class="table-responsive">
              @if($posts)
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>

                      <th>Image</th>
                      <th>Post Title</th>
                      <th>Post Description</th>
                      <th>Role</th>
                      <th>Category</th>                    
                      <th>Created Date</th>
                      <th>Update Date</th>
                      <th>Action</th>
                    </tr>
                  </thead>
                  <tfoot>
                  @foreach($posts as $post)
                    <tr>
                      <td><img height="50" src="{{$post->photo ? $post->photo->file : "http://placehold.it/200x200"}}" alt=""/></td>

                    <td>{{$post->post_title}}</td>
                      <td>{{$post->post_description}}</td>
                      <td>
                      {{
                      $post->role ? $post->role->name : "No Role Yet" 
                      }}
                      </td>
                      <td>
                      {{
                      $post->category ? $post->category->name : "No Category Yet" 
                      }}
                      </td>
                      <td>{{$post->created_at->diffForHumans() }}</td> 
                      <td>{{$post->updated_at->diffForHumans() }}</td> 
                    <td>
                      <a href="{{route('admin.posts.edit', $post->id)}}" class="btn btn-primary btn-circle"><i class="fas fa-info-circle" ></i></a>
                      <a href="{{route('admin.posts.edit', $post->id)}}" class="btn btn-info btn-circle"><i class="fas fa-edit" ></i></a> 
                       <button type="button" class="modal-delete btn btn-danger" data-id="{{$post->id}}" data-post_title="{{$post->post_title}}"><i class="fas fa-trash" ></i></button>
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

   <div class="modal fade" id="postdelete" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        Do you want to delete this post
        <div class="postname"></div>
        <div class="postid" style="display:none"> </div>
        


        

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-success" data-dismiss="modal">Close</button>
        <button type="button"  class="btn btn-danger deletepost" data-dismiss="modal">Delete</button>
      </div>
    </div>
  </div>
</div>

@stop