<?php

namespace App\Http\Controllers;

use App\Models\Jenis;
use App\Models\Kategori;
use Exception;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class JenisController extends Controller
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
            
            $kategori = Kategori::all();

            if(!empty($request->get('kategori_id'))){
                $kategori_id = $request->get('kategori_id');
                $data = Jenis::where(function($query) use ($search, $kategori_id) {
                    $query->where('jenis', 'LIKE', "%{$search}%");
                    $query->where('kategori_id', '=', $kategori_id);
                })->latest()->paginate($perPage);
            }else{
                $data = Jenis::where(function($query) use ($search) {
                            $query->where('jenis', 'LIKE', "%{$search}%");
                        })->latest()->paginate($perPage);
            }

            return response()->json([
                'data'      => $data,
                'kategori'  => $kategori,
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
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validatedData = Validator::make($request->all(), [
            'kategori'       => 'required',
            'jenis'      => 'required',
        ]);

        try 
        {
            if ($validatedData->fails()){
                return response()->json(['success' => false, 'message' => $validatedData->errors()], JsonResponse::HTTP_INTERNAL_SERVER_ERROR);
            }
            
            $data   = Jenis::create([
                'kategori_id'    => $request->input('kategori'),
                'jenis'   => $request->input('jenis'),
            ]); ;

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
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        try 
        {
            $data   = Jenis::findOrFail($id);

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
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $validatedData = Validator::make($request->all(), [
            'kategori'       => 'required',
            'jenis'      => 'required',
        ]);

        try 
        {
            if ($validatedData->fails()){
                return response()->json(['success' => false, 'message' => $validatedData->errors()], JsonResponse::HTTP_INTERNAL_SERVER_ERROR);
            }
            
            $data   = Jenis::findOrFail($id)->update([
                'kategori_id'    => $request->input('kategori'),
                'jenis'   => $request->input('jenis'),
            ]); ;

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
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        try 
        {
            $data   = Jenis::findOrFail($id)->delete();

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

    public function multipleStore(Request $request)
    {
        $validatedData = $request->validate([
            'inputs.*.kategori_id' => 'required',
            'inputs.*.jenis' => ''
        ]);

        try 
        {
            $createdData = [];
            foreach ($validatedData['inputs'] as $input) {
                $createdData[] = Jenis::create($input);
            }

            return response()->json([
                'data'      => $createdData,
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
}
