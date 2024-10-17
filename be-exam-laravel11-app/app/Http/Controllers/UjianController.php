<?php

namespace App\Http\Controllers;

use App\Models\Jawaban;
use App\Models\Ujian;
use Exception;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;

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
                $questionNumber = substr($question, 1); // Mengambil nomor soal (misalnya dari 'q1' jadi '1')
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
    public function show(string $id)
    {
        //
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
}
