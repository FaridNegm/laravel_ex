<?php

namespace App\Http\Controllers;

use App\Trait\ApiResTrait;
use App\Models\Post;
use Illuminate\Http\Request;

class PostController extends Controller
{

    use ApiResTrait;


    public function index(){
        $data = Post::where('status', 1)->get();
        $count_data = $data->count();

        return $this->apiRes($data, null , 200);
    }

    public function postById($id){
        $data = Post::where('id', $id)->first();
        if($data)
            return $this->apiRes($data, 'done get the post', 201);
        else
            return $this->apiRes($data, 'not found the post', 401);
    }

    public function store(Request $request){
        $request->validate([
            'name' => 'required',
            'description' => 'required'
        ]);

        $post  = Post::create($request->all());
        return $this->apiRes($post, 'تمت اضافه post بنجاح', 200);
    }
}
