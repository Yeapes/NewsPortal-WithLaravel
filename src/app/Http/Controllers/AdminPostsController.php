<?php

namespace App\Http\Controllers;
use App\Http\Requests\PostCreateRequest;
use App\Http\Requests\PostUpdateRequest;
use App\Post;
use App\Role; 
use App\Photo;
use App\Postcategory; 
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class AdminPostsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $posts = Post::all(); 
        return view('admin.posts.index', compact('posts'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        $roles = Role::pluck('name','id')->all();
        $categories = Postcategory::pluck('name','id')->all();
        return view('admin.posts.create', compact('roles', 'categories')); 
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(PostCreateRequest $request)
    {
        //
        $data =  $request->all(); 
        if($file = $request->file('file')){
            $name = time().$file->getClientOriginalName();
            $file->move('images', $name);
            $photo = Photo::create(['file'=>$name]);
            $data['photo_id'] = $photo->id;
        }

        //return $data;
        Post::create($data);
         return redirect("/admin/posts");
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $post = Post::FindOrFail($id);
        $roles = Role::pluck('name','id')->all();
        $categories = Postcategory::pluck('name','id')->all(); 
        return view("admin.posts.edit", compact("post","roles","categories"));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(PostUpdateRequest $request, $id)
    {
        //
        
            //
            $post = Post::findOrFail($id); 
            $data =  $request->all(); 
            if($file = $request->file('file')){
                $name = time().$file->getClientOriginalName();
                $file->move('images', $name);
                $photo = Photo::create(['file'=>$name]);
                $post['photo_id'] = $photo->id;
            }
            //return $data;
            $post->update($data);
             return redirect("/admin/posts");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $post = Post::findOrFail($id);
        //unlink(public_path(). $user->photo->file);
        $post->delete();
        Session::flash('deleted_user', 'The user has been deleted');
        return redirect('/admin/posts');
    }
    public function deletepost(Request $request){
        Post::find($request->id)->delete();
        return "ok";
    }
}
