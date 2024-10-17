<?php

namespace App\Http\Controllers;

use App\Models\PaketTo;
use Exception;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class PaketController extends Controller
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

            $data = PaketTo::where(function($query) use ($search) {
                $query->where('paket', 'LIKE', "%{$search}%");
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
            'paket'      => 'required',
            'jlh_soal'   => 'required',
            'waktu'      => 'required',
        ]);

        try 
        {
            if ($validatedData->fails()){
                return response()->json(['success' => false, 'message' => $validatedData->errors()], JsonResponse::HTTP_INTERNAL_SERVER_ERROR);
            }
            
            $data   = PaketTo::create([
                'paket'    => $request->input('paket'),
                'jlh_soal'   => $request->input('jlh_soal'),
                'waktu'   => $request->input('waktu'),
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
        try 
        {
            $data   = PaketTo::findOrFail($id);

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
        $validatedData = Validator::make($request->all(), [
            'paket'      => 'required',
            'jlh_soal'   => 'required',
            'waktu'      => 'required',
        ]);

        try 
        {
            if ($validatedData->fails()){
                return response()->json(['success' => false, 'message' => $validatedData->errors()], JsonResponse::HTTP_INTERNAL_SERVER_ERROR);
            }
            
            $data   = PaketTo::findOrFail($id)->update([
                'paket'    => $request->input('paket'),
                'jlh_soal'   => $request->input('jlh_soal'),
                'waktu'   => $request->input('waktu'),
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
            $data   = PaketTo::findOrFail($id)->delete();

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
            'inputs.*.paket' => 'required',
            'inputs.*.jlh_soal' => 'required',
            'inputs.*.waktu' => 'required'
        ]);

        try 
        {
            $createdData = [];
            foreach ($validatedData['inputs'] as $input) {
                $createdData[] = PaketTo::create($input);
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
