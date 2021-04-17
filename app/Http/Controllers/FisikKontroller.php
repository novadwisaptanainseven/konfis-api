<?php

namespace App\Http\Controllers;

use App\Models\Fisik;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Validator;

class FisikKontroller extends Controller
{
    // Insert Fisik
    public function insert(Request $request)
    {
        // Validasi
        $messages = [
            "required" => ":attribute harus diisi!",
            "unique" => ":attribute sudah ada!",
        ];
        $validator = Validator::make(
            $request->all(),
            [
                "kode_bidang" => "required",
                "no_urut" => "required",
                "no_dpa" => "required",
                "uraian" => "required",
                "tanggal" => "required",
                "ttd" => "required",
            ],
            $messages
        );
        // Cek Validasi
        if ($validator->fails()) {
            return response()->json([
                "errors" => $validator->errors()
            ], 400);
        }
        // Akhir Validasi

        // Insert data to database
        $fisik = new Fisik();
        $fisik->kode_bidang = $request->kode_bidang;
        $fisik->no_dpa = $request->no_dpa;
        $fisik->no_urut = $request->no_urut;
        $fisik->uraian = $request->uraian;
        $fisik->ttd = $request->ttd;
        $fisik->tanggal = $request->tanggal;
        $fisik->save();

        return response()->json([
            "message" => "Tambah data fisik berhasil",
            "input_data" => $request->all()
        ], 201);
    }

     // Get All Fisik
     public function getAll(Request $request)
     {
         $order = $request->order ? $request->order : "asc";
         $data = Fisik::orderBy("id_fisik", $order)->get();
 
         foreach ($data as $i => $d) {
             $d->no = $i + 1;
         }
 
         return response()->json([
             "message" => "Berhasil mendapatkan semua data fisik",
             "data" => $data
         ], 200);
     }

     // Get Fisik By ID
    public function getById($id_fisik)
    {
        $data = Fisik::where("id_fisik", "=", $id_fisik)->first();

        if ($data) {

            return response()->json([
                "message" => "Berhasil mendapatkan data fisik dengan id: $id_fisik",
                "data" => $data
            ], 200);
        } else {
            return response()->json([
                "message" => "Data fisik dengan id: $id_fisik tidak ditemukan"
            ], 404);
        }
    }

    // Edit Fisik
    public function edit(Request $request, $id_fisik)
    {
        // Cek Data Fisik
        $fisik = Fisik::where("id_fisik", "=", $id_fisik)->first();

        // Jika data fisik tidak ditemukan
        if (!$fisik) {
            return response()->json([
                "message" => "Data fisik dengan id: $id_fisik tidak ditemukan"
            ], 404);
        }

        // Validasi
        $messages = [
            "required" => ":attribute harus diisi!",
            "unique" => ":attribute sudah ada!",
        ];
        $validator = Validator::make(
            $request->all(),
            [
                "kode_bidang" => "required",
                "no_urut" => "required",
                "no_dpa" => "required",
                "uraian" => "required",
                "tanggal" => "required",
                "ttd" => "required",
            ],
            $messages
        );
        // Cek Validasi
        if ($validator->fails()) {
            return response()->json([
                "errors" => $validator->errors()
            ], 400);
        }
        // Akhir Validasi

        // Edit data 
        $fisik->kode_bidang = $request->kode_bidang ? $request->kode_bidang : $fisik->kode_bidang;
        $fisik->no_dpa = $request->no_dpa ? $request->no_dpa : $fisik->no_dpa;;
        $fisik->no_urut = $request->no_urut ? $request->no_urut : $fisik->no_urut;;
        $fisik->uraian = $request->uraian ? $request->uraian : $fisik->uraian;;
        $fisik->ttd = $request->ttd ? $request->ttd : $fisik->ttd;;
        $fisik->tanggal = $request->tanggal ? $request->tanggal : $fisik->tanggal;;
        $fisik->save();

        return response()->json([
            "message" => "Edit data fisik dengan id: $id_fisik berhasil",
            "edited_data" => $request->all()
        ], 201);
    }

    // Delete Fisik By ID
    public function deleteFisik($id_fisik)
    {
        $data = Fisik::where("id_fisik", "=", $id_fisik)->first();

        if ($data) {
            Fisik::where("id_fisik", "=", $id_fisik)->delete();
            return response()->json([
                "message" => "Data fisik dengan id: $id_fisik berhasil dihapus",
                "deleted_data" => $data
            ], 201);
        } else {
            return response()->json([
                "message" => "Data fisik dengan id: $id_fisik tidak ditemukan",
            ], 404);
        }
    }

    // Print Fisik
    public function printFisik(Request $request)
    {
        /**
         * Display a listing of the resource.
         *
         * @return \Illuminate\Http\Response
         */
        $order = $request->order ? $request->order : "asc";

        $data = [
            "title" => "Data Kontrak Fisik",
            'date' => date("d/m/Y"),
            "data" => Fisik::orderBy("id_fisik", $order)->get()
        ];

        $view = View("print_data_fisik", $data);
        $pdf = App::make("dompdf.wrapper");
        $pdf->loadHTML($view->render())->setPaper('a4', 'landscape');
        // $pdf->setOptions(["isPhpEnabled" => true]);

        return $pdf->stream("data-kontrak-fisik.pdf", array("Attachment" => false));
    }
}
