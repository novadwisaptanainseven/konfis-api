<?php

namespace App\Http\Controllers;

use App\Models\Perencanaan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Validator;

class PerencanaanController extends Controller
{
    // Insert Perencanaan
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
        $perencanaan = new Perencanaan();
        $perencanaan->kode_bidang = $request->kode_bidang;
        $perencanaan->no_dpa = $request->no_dpa;
        $perencanaan->no_urut = $request->no_urut;
        $perencanaan->uraian = $request->uraian;
        $perencanaan->ttd = $request->ttd;
        $perencanaan->tanggal = $request->tanggal;
        $perencanaan->save();

        return response()->json([
            "message" => "Tambah data perencanaan berhasil",
            "input_data" => $request->all()
        ], 201);
    }

     // Get All Perencanaan
     public function getAll(Request $request)
     {
         $order = $request->order ? $request->order : "asc";
         $data = Perencanaan::orderBy("id_perencanaan", $order)->get();
 
         foreach ($data as $i => $d) {
             $d->no = $i + 1;
         }
 
         return response()->json([
             "message" => "Berhasil mendapatkan semua data perencanaan",
             "data" => $data
         ], 200);
     }

     // Get Perencanaan By ID
    public function getById($id_perencanaan)
    {
        $data = Perencanaan::where("id_perencanaan", "=", $id_perencanaan)->first();

        if ($data) {

            return response()->json([
                "message" => "Berhasil mendapatkan data perencanaan dengan id: $id_perencanaan",
                "data" => $data
            ], 200);
        } else {
            return response()->json([
                "message" => "Data perencanaan dengan id: $id_perencanaan tidak ditemukan"
            ], 404);
        }
    }

    // Edit Perencanaan
    public function edit(Request $request, $id_perencanaan)
    {
        // Cek Data perencanaan
        $perencanaan = Perencanaan::where("id_perencanaan", "=", $id_perencanaan)->first();

        // Jika data perencanaan tidak ditemukan
        if (!$perencanaan) {
            return response()->json([
                "message" => "Data perencanaan dengan id: $id_perencanaan tidak ditemukan"
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
        $perencanaan->kode_bidang = $request->kode_bidang ? $request->kode_bidang : $perencanaan->kode_bidang;
        $perencanaan->no_dpa = $request->no_dpa ? $request->no_dpa : $perencanaan->no_dpa;;
        $perencanaan->no_urut = $request->no_urut ? $request->no_urut : $perencanaan->no_urut;;
        $perencanaan->uraian = $request->uraian ? $request->uraian : $perencanaan->uraian;;
        $perencanaan->ttd = $request->ttd ? $request->ttd : $perencanaan->ttd;;
        $perencanaan->tanggal = $request->tanggal ? $request->tanggal : $perencanaan->tanggal;;
        $perencanaan->save();

        return response()->json([
            "message" => "Edit data perencanaan dengan id: $id_perencanaan berhasil",
            "edited_data" => $request->all()
        ], 201);
    }

    // Delete Perencanaan By ID
    public function deletePerencanaan($id_perencanaan)
    {
        $data = Perencanaan::where("id_perencanaan", "=", $id_perencanaan)->first();

        if ($data) {
            Perencanaan::where("id_perencanaan", "=", $id_perencanaan)->delete();
            return response()->json([
                "message" => "Data perencanaan dengan id: $id_perencanaan berhasil dihapus",
                "deleted_data" => $data
            ], 201);
        } else {
            return response()->json([
                "message" => "Data perencanaan dengan id: $id_perencanaan tidak ditemukan",
            ], 404);
        }
    }

    // Print Perencanaan
    public function printPerencanaan(Request $request)
    {
        /**
         * Display a listing of the resource.
         *
         * @return \Illuminate\Http\Response
         */
        $order = $request->order ? $request->order : "asc";

        $data = [
            "title" => "Data Kontrak Perencanaan",
            'date' => date("d/m/Y"),
            "data" => Perencanaan::orderBy("id_perencanaan", $order)->get()
        ];

        $view = View("print_data_perencanaan", $data);
        $pdf = App::make("dompdf.wrapper");
        $pdf->loadHTML($view->render())->setPaper('a4', 'landscape');
        // $pdf->setOptions(["isPhpEnabled" => true]);

        return $pdf->stream("data-kontrak-perencanaan.pdf", array("Attachment" => false));
    }
}
