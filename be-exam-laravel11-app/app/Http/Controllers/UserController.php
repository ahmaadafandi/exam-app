<?php

namespace App\Http\Controllers;

use Exception;
use App\Models\User;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        try 
        {
            $perPage = $request->get('showing', 10);
            $search = $request->get('search', '');

            $data = User::where(function($query) use ($search) {
                        $query->where('name', 'LIKE', "%{$search}%");
                        $query->orWhere('email', 'LIKE', "%{$search}%");
                    })->latest()->paginate($perPage);

            return response()->json([
                'data'      => $data,
                'success'   => true,
            ], JsonResponse::HTTP_OK);
        } 
        catch (Exception $e) 
        {
            return response()->json([
                'data'      => [],
                'success'   => false,
                'message'   => $e->getMessage()
            ], JsonResponse::HTTP_INTERNAL_SERVER_ERROR);
        }
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validatedData = Validator::make($request->all(), [
            'name'       => 'required',
            'email'      => 'required',
            'password'   => 'required',
            'role'       => 'required',
            'avatar'     => 'image|mimes:jpg,jpeg,png|max:3072'
        ]);

        try 
        {
            if ($validatedData->fails()){
                return response()->json(['success' => false, 'message' => $validatedData->errors()], JsonResponse::HTTP_INTERNAL_SERVER_ERROR);
            }

            if ($request->hasFile('avatar')) {
                $avatar = $request->file('avatar');
                $filename = time() . '_' . $avatar->getClientOriginalName();
                $avatar->storeAs('public/images', $filename);
            }

            $data   = User::create([
                'name'    => $request->input('name'),
                'email'   => $request->input('email'),
                'password' => bcrypt($request->input('password')),
                'avatar'   => $filename
            ]); 

            $data->addRole($request->input('role'));

            return response()->json([
                'data'      => $data,
                'success'   => true,
                'message'   => 'Data created successfully'
            ], JsonResponse::HTTP_CREATED);
        } 
        catch (Exception $e) 
        {
            return response()->json([
                'data'      => [],
                'success'   => false,
                'message'   => $e->getMessage()
            ], JsonResponse::HTTP_INTERNAL_SERVER_ERROR);    
        }
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        try 
        {
            $data   = User::findOrFail($id);
            $roles = $data->roles->pluck('name');

            return response()->json([
                'data'      => $data,
                'role'      => $roles[0],
                'success'   => true,
            ], JsonResponse::HTTP_OK);
        } 
        catch (Exception $e) 
        {
            return response()->json([
                'data'      => [],
                'success'   => false,
                'message'   => $e->getMessage()
            ], JsonResponse::HTTP_INTERNAL_SERVER_ERROR);    
        }
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        try 
        {
            $data   = User::findOrFail($id);
            $filename = $data->avatar;

            if ($request->hasFile('avatar')) {
                $validatedData = Validator::make($request->all(), [
                    'name'    => 'required',
                    'email'   => 'required',
                    'avatar'  => 'image|mimes:jpg,jpeg,png|max:3072'
                ]);
                
                if ($validatedData->fails()){
                    return response()->json(['success' => false, 'message' => $validatedData->errors()], JsonResponse::HTTP_INTERNAL_SERVER_ERROR);
                }

                Storage::delete('public/images/' . $filename);
        
                $avatar = $request->file('avatar');
                $filename = time() . '_' . $avatar->getClientOriginalName();
                $avatar->storeAs('public/images', $filename);
            }

            $roles = $data->roles->pluck('name');
            $data->removeRole($roles[0]);

            $data->update([
                'name'     => $request->input('name'),
                'email'    => $request->input('email'),
                'avatar'   => $filename
            ]);

            // Cek jika ada perubahan password
            if ($request->input('password') != '') {
                $data->update([
                    'password' => bcrypt($request->input('password')),
                ]);
            }

            $data->addRole($request->input('role'));
        
            return response()->json([
                'data'      => $data,
                'success'   => true,
                'message'   => 'Data updated successfully'
            ], JsonResponse::HTTP_OK);
        } 
        catch (Exception $e) 
        {
            return response()->json([
                'data'      => [],
                'success'   => false,
                'message'   => $e->getMessage()
            ], JsonResponse::HTTP_INTERNAL_SERVER_ERROR);    
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        try 
        {
            $data   = User::findOrFail($id);

            if ($data->avatar) {
                Storage::delete('public/images/' . $data->avatar);
            }

            // $role = $data->getRoleNames();
            $roles = $data->roles->pluck('name');
            $data->removeRole($roles[0]);

            $data->delete();

            return response()->json([
                'data'      => $data,
                'success'   => true,
                'message'   => 'Data deleted successfully'
            ], JsonResponse::HTTP_OK);
        } 
        catch (Exception $e) 
        {
            return response()->json([
                'data'      => [],
                'success'   => false,
                'message'   => $e->getMessage()
            ], JsonResponse::HTTP_INTERNAL_SERVER_ERROR);    
        }
    }
}
