<?php

namespace App\Http\Controllers;

use App\Models\Jawaban;
use App\Models\Soal;
use App\Models\Ujian;
use Exception;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class UjianController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
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
        try 
        {
            // Simpan data ujian
            $exam = Ujian::create([
                'user_id' => $request->user()->id,
                'paket_to_id' => $request->input('paket_to_id'),
                'jlh_soal' => $request->input('jlh_soal'),
                'waktu_pengerjaan' => $request->input('waktu_pengerjaan'),
            ]);

            // Tangkap jawaban yang dikirim dalam format array
            $answers = json_decode($request->input('answers'), true); // Mengurai JSON menjadi array

            // Simpan jawaban
            foreach ($answers as $question => $answer) {
                // Mengambil nomor soal dengan menggunakan regex untuk menangkap angka
                preg_match('/(\d+)/', $question, $matches);
                $questionNumber = $matches[0]; // Nomor soal (misalnya dari 'idQ1' jadi '1')
                Jawaban::create([
                    'ujian_id' => $exam->id,
                    'soal_id' => $questionNumber,
                    'jawaban' => $answer,
                ]);
            }

            return response()->json([
                'data'      => $exam,
                'success'   => true,
                'message'   => 'Data jawaban telah tersimpan, dan ujian telah selesai dilaksanakan'
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
    public function show(Request $request, string $id)
    {
        try 
        {
            $jlh_soal = $request->get('jlh_soal');
            $data   = Soal::where('paket_to_id', $id)->limit($jlh_soal)->get();

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
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }

    public function getUjianPaket(Request $request, $paket_id)
    {
        try 
        {
            // Mengambil data perolehan nilai berdasarkan paket_id
            $data = Ujian::where('paket_to_id', $paket_id)->where('user_id', $request->user()->id)->get();

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

    public function getUjianPembahasan($ujian_id)
    {
        try 
        {
            // Mengambil data perolehan nilai berdasarkan paket_id
            $data = Jawaban::join('soals', 'soals.id', 'jawabans.soal_id')->join('ujians', 'ujians.id', 'jawabans.ujian_id')->join('kunci_jawabans', 'kunci_jawabans.soal_id', 'soals.id')->where('jawabans.ujian_id', $ujian_id)->get(['soals.id AS soal_id', 'soals.soal', 'soals.pilihan1', 'soals.pilihan2', 'soals.pilihan3', 'soals.pilihan4', 'soals.pilihan5', 'ujians.jlh_soal' , 'jawabans.*', 'kunci_jawabans.jawaban AS kunci_jawaban']);

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
