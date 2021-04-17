<?php

namespace App\Http\Controllers;

use App\Models\Pengawasan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Validator;

class PengawasanController extends Controller
{
    // Insert Pengawasan
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
        $pengawasan = new Pengawasan();
        $pengawasan->kode_bidang = $request->kode_bidang;
        $pengawasan->no_dpa = $request->no_dpa;
        $pengawasan->no_urut = $request->no_urut;
        $pengawasan->uraian = $request->uraian;
        $pengawasan->ttd = $request->ttd;
        $pengawasan->tanggal = $request->tanggal;
        $pengawasan->save();

        return response()->json([
            "message" => "Tambah data pengawasan berhasil",
            "input_data" => $request->all()
        ], 201);
    }

     // Get All Pengawasan
     public function getAll(Request $request)
     {
         $order = $request->order ? $request->order : "asc";
         $data = Pengawasan::orderBy("id_pengawasan", $order)->get();
 
         foreach ($data as $i => $d) {
             $d->no = $i + 1;
         }
 
         return response()->json([
             "message" => "Berhasil mendapatkan semua data pengawasan",
             "data" => $data
         ], 200);
     }

     // Get Pengawasan By ID
    public function getById($id_pengawasan)
    {
        $data = Pengawasan::where("id_pengawasan", "=", $id_pengawasan)->first();

        if ($data) {

            return response()->json([
                "message" => "Berhasil mendapatkan data pengawasan dengan id: $id_pengawasan",
                "data" => $data
            ], 200);
        } else {
            return response()->json([
                "message" => "Data pengawasan dengan id: $id_pengawasan tidak ditemukan"
            ], 404);
        }
    }

    // Edit Pengawasan
    public function edit(Request $request, $id_pengawasan)
    {
        // Cek Data pengawasan
        $pengawasan = Pengawasan::where("id_pengawasan", "=", $id_pengawasan)->first();

        // Jika data pengawasan tidak ditemukan
        if (!$pengawasan) {
            return response()->json([
                "message" => "Data pengawasan dengan id: $id_pengawasan tidak ditemukan"
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
        $pengawasan->kode_bidang = $request->kode_bidang ? $request->kode_bidang : $pengawasan->kode_bidang;
        $pengawasan->no_dpa = $request->no_dpa ? $request->no_dpa : $pengawasan->no_dpa;;
        $pengawasan->no_urut = $request->no_urut ? $request->no_urut : $pengawasan->no_urut;;
        $pengawasan->uraian = $request->uraian ? $request->uraian : $pengawasan->uraian;;
        $pengawasan->ttd = $request->ttd ? $request->ttd : $pengawasan->ttd;;
        $pengawasan->tanggal = $request->tanggal ? $request->tanggal : $pengawasan->tanggal;;
        $pengawasan->save();

        return response()->json([
            "message" => "Edit data pengawasan dengan id: $id_pengawasan berhasil",
            "edited_data" => $request->all()
        ], 201);
    }

    // Delete Pengawasan By ID
    public function deletePengawasan($id_pengawasan)
    {
        $data = Pengawasan::where("id_pengawasan", "=", $id_pengawasan)->first();

        if ($data) {
            Pengawasan::where("id_pengawasan", "=", $id_pengawasan)->delete();
            return response()->json([
                "message" => "Data pengawasan dengan id: $id_pengawasan berhasil dihapus",
                "deleted_data" => $data
            ], 201);
        } else {
            return response()->json([
                "message" => "Data pengawasan dengan id: $id_pengawasan tidak ditemukan",
            ], 404);
        }
    }

    // Print Pengawasan
    public function printPengawasan(Request $request)
    {
        /**
         * Display a listing of the resource.
         *
         * @return \Illuminate\Http\Response
         */
        $order = $request->order ? $request->order : "asc";

        $data = [
            "title" => "Data Kontrak Pengawasan",
            'date' => date("d/m/Y"),
            "data" => Pengawasan::orderBy("id_pengawasan", $order)->get()
        ];

        $view = View("print_data_pengawasan", $data);
        $pdf = App::make("dompdf.wrapper");
        $pdf->loadHTML($view->render())->setPaper('a4', 'landscape');
        // $pdf->setOptions(["isPhpEnabled" => true]);

        return $pdf->stream("data-kontrak-pengawasan.pdf", array("Attachment" => false));
    }
}
