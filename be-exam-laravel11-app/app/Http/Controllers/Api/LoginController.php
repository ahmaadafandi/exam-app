<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Tymon\JWTAuth\Facades\JWTAuth;
use Illuminate\Support\Facades\Validator;

class LoginController extends Controller
{
    public function __invoke(Request $request)
    {
        //set validation
        $validator = Validator::make($request->all(), [
            'email'     => 'required',
            'password'  => 'required'
        ]);

        //if validation fails
        if ($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }

        //get credentials from request
        $credentials = $request->only('email', 'password');

        //if auth failed
        if(!$token = JWTAuth::attempt($credentials)) {
            return response()->json([
                'success' => false,
                'message' => 'Your email or password is wrong!'
            ], 401);
        }

        $user = JWTAuth::user();

        // Check if the user is null
        if ($user === null) {
            return response()->json([
                'success' => false,
                'message' => 'User not authenticated.'
            ], 401);
        }

        $role = '';
        if ($user->hasRole('administrator')) {
            $role = 'administrator';
        } else if ($user->hasRole('user')) {
            $role = 'user';
        }

        //if auth success
        return response()->json([
            'success' => true,
            'user'    => $user,   
            'role'    => $role, 
            'token'   => $token   
        ], 200);
    }
}
