<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Post;
use App\Role; 
use App\Photo;
use App\Postcategory; 
class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {

        $posts = Post::all(); 
        return view('frontend.post', compact('posts'));
 
    }
}
