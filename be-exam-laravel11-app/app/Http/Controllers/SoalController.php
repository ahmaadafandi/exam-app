<?php

namespace App\Http\Controllers;

use App\Models\Jenis;
use App\Models\Kategori;
use App\Models\PaketTo;
use App\Models\Soal;
use Exception;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class SoalController extends Controller
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

            $paket_to = PaketTo::all();
            $jenis = Jenis::join('kategoris', 'kategoris.id', 'jenis.kategori_id')->get(['jenis.*', 'kategoris.kategori']);

            if($request->has('paket_to_id') && $request->has('jenis_id')){
                $paket_to_id = $request->get('paket_to_id');
                $jenis_id = $request->get('jenis_id');
                if($paket_to_id != '' && $jenis_id !=''){
                    $data = Soal::where(function($query) use ($search, $paket_to_id, $jenis_id) {
                        $query->where('soal', 'LIKE', "%{$search}%");
                        $query->where('paket_to_id', '=', $paket_to_id);
                        $query->where('jenis_id', '=', $jenis_id);
                        // $query->orWhere('tipe', 'LIKE', "%{$search}%");
                    })->latest()->paginate($perPage);
                }elseif($paket_to_id != '' && $jenis_id ==''){
                    $data = Soal::where(function($query) use ($search, $paket_to_id, $jenis_id) {
                        $query->where('soal', 'LIKE', "%{$search}%");
                        $query->where('paket_to_id', '=', $paket_to_id);
                        // $query->orWhere('tipe', 'LIKE', "%{$search}%");
                    })->latest()->paginate($perPage);
                }elseif($paket_to_id == '' && $jenis_id !=''){
                    $data = Soal::where(function($query) use ($search, $paket_to_id, $jenis_id) {
                        $query->where('soal', 'LIKE', "%{$search}%");
                        $query->where('jenis_id', '=', $jenis_id);
                        // $query->orWhere('tipe', 'LIKE', "%{$search}%");
                    })->latest()->paginate($perPage);
                }
            }else{
                $data = Soal::where(function($query) use ($search) {
                    $query->where('soal', 'LIKE', "%{$search}%");
                    // $query->orWhere('tipe', 'LIKE', "%{$search}%");
                })->latest()->paginate($perPage);
            }

            return response()->json([
                'data'      => $data,
                "paket_to"  => $paket_to,
                "jenis"     => $jenis,
                'success'   => true,
            ], JsonResponse::HTTP_OK);
        } 
        catch (Exception $e) 
        {
            return response()->json([
                'data'      => [],
                "paket_to"  => [],
                "jenis"     => [],
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
        try 
        {
            $paket_to = PaketTo::all();
            $jenis = Jenis::join('kategoris', 'kategoris.id', 'jenis.kategori_id')->get(['jenis.*', 'kategoris.kategori']);

            return response()->json([
                'jenis'      => $jenis,
                'paket_to'   => $paket_to,
                'success'    => true,
            ], JsonResponse::HTTP_OK);
        } 
        catch (Exception $e) 
        {
            return response()->json([
                'jenis'     => [],
                'paket_to'  => [],
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
            'paket_to_id'   => 'required',
            'jenis_id'      => 'required',
            'soal'          => 'required',
            'pilihan1'      => 'required',
            'pilihan2'      => 'required',
            'pilihan3'      => 'required',
            'pilihan4'      => 'required',
            'pilihan5'      => 'required',
        ]);

        try 
        {
            if ($validatedData->fails()){
                return response()->json(['success' => false, 'message' => $validatedData->errors()], JsonResponse::HTTP_INTERNAL_SERVER_ERROR);
            }

            // if ($request->hasFile('image')) {
            //     $image = $request->file('image');
            //     $filename = time() . '_' . $image->getClientOriginalName();
            //     $image->storeAs('public/images/post', $filename);
            // }
            
            // $slug = createSlug($request->input('judul'));

            // $beritaUtama    = ($request->isPublished == "true") ? 1 : 0;
            // $isi            = $request->isi;
            // $ringkasan      = strip_tags($isi);
            // $ringkasan      = substr($ringkasan, 0, 200);

            $data   = Soal::create([
                'user_id' => $request->user()->id,
                'paket_to_id' => $request->input('paket_to_id'),
                'jenis_id'   => $request->input('jenis_id'),
                'soal'   => $request->input('soal'),
                'pilihan1'   => $request->input('pilihan1'),
                'pilihan2'   => $request->input('pilihan2'),
                'pilihan3'   => $request->input('pilihan3'),
                'pilihan4'   => $request->input('pilihan4'),
                'pilihan5'   => $request->input('pilihan5'),
            ]); 

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
            $data   = Soal::findOrFail($id);

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
        try {
            // Temukan data post berdasarkan ID
            $data = Soal::findOrFail($id);
    
            // Validasi data
            $validatedData = Validator::make($request->all(), [
                'paket_to_id'   => 'required',
                'jenis_id'      => 'required',
                'soal'          => 'required',
                'pilihan1'      => 'required',
                'pilihan2'      => 'required',
                'pilihan3'      => 'required',
                'pilihan4'      => 'required',
                'pilihan5'      => 'required',
            ]);
    
            if ($validatedData->fails()) {
                return response()->json([
                    'success' => false, 
                    'message' => $validatedData->errors()
                ], JsonResponse::HTTP_UNPROCESSABLE_ENTITY);
            }
    
            // Jika ada file gambar yang diupload, proses upload dan hapus file lama
            // if ($request->hasFile('image')) {
            //     // Hapus gambar lama jika ada
            //     if ($filename) {
            //         Storage::delete('public/images/post/' . $filename);
            //     }
                
            //     // Simpan gambar baru
            //     $image = $request->file('image');
            //     $filename = time() . '_' . $image->getClientOriginalName();
            //     $image->storeAs('public/images/post', $filename);
            // }
    
            // Buat slug dari judul
            // $slug = createSlug($request->input('judul'));
    
            // Ambil data dari request
            // $beritaUtama = $request->input('isPublished');
            // $isi = $request->input('isi');
            // $ringkasan = strip_tags($isi);
            // $ringkasan = substr($ringkasan, 0, 200);
    
            // Update data di database
            $data->update([
                'user_id' => $request->user()->id,
                'paket_to_id' => $request->input('paket_to_id'),
                'jenis_id'   => $request->input('jenis_id'),
                'soal'   => $request->input('soal'),
                'pilihan1'   => $request->input('pilihan1'),
                'pilihan2'   => $request->input('pilihan2'),
                'pilihan3'   => $request->input('pilihan3'),
                'pilihan4'   => $request->input('pilihan4'),
                'pilihan5'   => $request->input('pilihan5'),
            ]);
    
            return response()->json([
                'data'      => $data,
                'success'   => true,
                'message'   => 'Data updated successfully'
            ], JsonResponse::HTTP_OK);
    
        } catch (Exception $e) {
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
        //
    }

    public function soalCkeditorImage(Request $request) 
    {
        // Validasi request, pastikan hanya menerima file gambar
        $request->validate([
            'upload' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048', // sesuaikan dengan kebutuhan
        ]);

        try{
           // Simpan file gambar ke dalam storage atau public folder
            $image = $request->file('upload');
            $imageName = time() . '.' . $image->getClientOriginalExtension();
            $image->move(public_path('soal/images'), $imageName); // sesuaikan path penyimpanan

            // Berikan respons kepada CKEditor dengan URL gambar yang tersimpan
            return response()->json([
                'uploaded' => true,
                'url' => asset('soal/images/' . $imageName), // URL untuk akses gambar secara publik
            ]);
        } catch (Exception $e) {
            return response()->json([
                'uploaded' => false,
                'url' => $e->getMessage(), // URL untuk akses gambar secara publik
            ]);
        }
    }
}
