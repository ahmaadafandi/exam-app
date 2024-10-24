<?php

namespace App\Http\Controllers;

use App\Models\PaketTo;
use App\Models\Soal;
use Exception;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\DB;

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
            $data   = Soal::where('paket_to_id',$id)->delete();
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

    public function getPerolehanNilaiUjianPaket($ujian_id)
    {
        try 
        {
            // Mengambil data perolehan nilai berdasarkan paket_id
            $data = DB::table('kategoris as kt')
                ->leftJoin('soals as s', 'kt.id', '=', 's.jenis_id')
                ->leftJoin('jawabans as j', 's.id', '=', 'j.soal_id')
                ->leftJoin('ujians as u', 'j.ujian_id', '=', 'u.id') // Menghubungkan jawaban dengan ujians
                ->leftJoin('kunci_jawabans as kj', function ($join) {
                    $join->on('s.id', '=', 'kj.soal_id')
                        ->on('j.jawaban', '=', 'kj.jawaban');
                })
                ->where('u.id', $ujian_id)
                ->select(
                    'u.id as ujian_id',
                    'kt.kategori',
                    DB::raw('COALESCE(SUM(kj.nilai), 0) as total_nilai'),
                    DB::raw('COUNT(s.id) as jumlah_soal')
                )
                ->groupBy('u.id', 'kt.id', 'kt.kategori')
                ->get();

            // Memeriksa apakah data ditemukan
            if ($data->isEmpty()) {
                return response()->json([
                    'data' => [],
                    'success' => true,
                    'message' => 'No data found for this package.'
                ], JsonResponse::HTTP_OK);
            }

            return response()->json([
                'data' => $data,
                'success' => true,
            ], JsonResponse::HTTP_OK);
        } 
        catch (Exception $e) 
        {
            // Menangkap error dan memberikan pesan kesalahan yang lebih detail
            return response()->json([
                'data' => [],
                'success' => false,
                'message' => 'Error fetching data: ' . $e->getMessage()
            ], JsonResponse::HTTP_INTERNAL_SERVER_ERROR);    
        }
    }
}
