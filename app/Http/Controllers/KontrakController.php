<?php

namespace App\Http\Controllers;

use App\Models\Kontrak;
use Facade\FlareClient\View;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Validator;

class KontrakController extends Controller
{
    // Insert Kontrak
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
                "no_kontrak" => "required|unique:kontrak",
                "uraian" => "required",
                "tanda_terima" => "required",
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
        $kontrak = new Kontrak();
        $kontrak->no_kontrak = $request->no_kontrak;
        $kontrak->uraian = $request->uraian;
        $kontrak->tanda_terima = $request->tanda_terima;
        $kontrak->tanggal = date("y-m-d");
        $kontrak->save();

        return response()->json([
            "message" => "Tambah data kontrak berhasil",
            "input_data" => $request->all()
        ], 201);
    }

    // Get All Kontrak
    public function getAll()
    {
        $data = Kontrak::all();

        foreach ($data as $i => $d) {
            $d->no = $i + 1;
        }

        return response()->json([
            "message" => "Berhasil mendapatkan semua data kontrak",
            "data" => $data
        ], 200);
    }

    // Get Kontrak By ID
    public function getById($id_kontrak)
    {
        $data = Kontrak::where("id_kontrak", "=", $id_kontrak)->first();

        if ($data) {

            return response()->json([
                "message" => "Berhasil mendapatkan data kontrak dengan id: $id_kontrak",
                "data" => $data
            ], 200);
        } else {
            return response()->json([
                "message" => "Data kontrak dengan id: $id_kontrak tidak ditemukan"
            ], 404);
        }
    }

    // Edit Kontrak
    public function edit(Request $request, $id_kontrak)
    {
        // Cek No Kontrak
        $kontrak = Kontrak::where("id_kontrak", "=", $id_kontrak)->first();

        // Jika data kontrak tidak ditemukan
        if (!$kontrak) {
            return response()->json([
                "message" => "Data kontrak dengan id: $id_kontrak tidak ditemukan"
            ], 404);
        }

        if ($kontrak->no_kontrak === $request->no_kontrak) {
            $username_rules = "required";
        } else {
            $username_rules = "required|unique:kontrak";
        }

        // Validasi
        $messages = [
            "required" => ":attribute harus diisi!",
            "unique" => ":attribute sudah ada!",
        ];
        $validator = Validator::make(
            $request->all(),
            [
                "no_kontrak" => $username_rules,
                "uraian" => "required",
                "tanda_terima" => "required",
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
        $kontrak->no_kontrak = $request->no_kontrak;
        $kontrak->uraian = $request->uraian;
        $kontrak->tanda_terima = $request->tanda_terima;
        $kontrak->save();

        return response()->json([
            "message" => "Edit data kontrak dengan id: $id_kontrak berhasil",
            "edited_data" => $request->all()
        ], 201);
    }

    // Delete Kontrak By ID
    public function deleteKontrak($id_kontrak)
    {
        $data = Kontrak::where("id_kontrak", "=", $id_kontrak)->first();

        if ($data) {
            Kontrak::where("id_kontrak", "=", $id_kontrak)->delete();
            return response()->json([
                "message" => "Data kontrak dengan id: $id_kontrak berhasil dihapus",
                "deleted_data" => $data
            ], 201);
        } else {
            return response()->json([
                "message" => "Data kontrak dengan id: $id_kontrak tidak ditemukan",
            ], 404);
        }
    }

    // Print Kontrak
    public function printKontrak()
    {
        /**
         * Display a listing of the resource.
         *
         * @return \Illuminate\Http\Response
         */

        $data = [
            "title" => "Data Penomoran Kontrak Fisik",
            'date' => date("m/d/Y"),
            "data" => Kontrak::all()
        ];

        $view = View("print_data_kontrak", $data);
        $pdf = App::make("dompdf.wrapper");
        $pdf->loadHTML($view->render())->setPaper('a4', 'portrait');
        // $pdf->setOptions(["isPhpEnabled" => true]);

        return $pdf->stream("data-kontrak-fisik.pdf", array("Attachment" => false));
    }
}
