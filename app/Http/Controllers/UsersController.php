<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class UsersController extends Controller
{
    public function index(){
        return view('welcome_alpine');
    }

    public function __invoke($users){
        $users = User::get();
        $response = $users;

        if($response->successfull()){
            return $response->jason('users');
        }

        return $response->jason('users');
    }
}
