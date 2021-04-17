<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>{{$title}}</title>
  <style>
    body {
      font-size: 0.8em;
    }

    .my-table {
      width: 100%;
      font-size: 0.9em;
      border-collapse: collapse;
      margin-top: 20px;
      font-family: Arial, Helvetica, sans-serif;
    }

    .header {
      display: flex;
      height: 100px;
    }

    .logo {
      width: 90px;
      margin-left: 40px;
    }

    /* .logo-container {
            border: 1px solid black;
            width: 150px;
        } */

    .deskripsi-container {
      margin-left: 90px;
      width: 80%;
      text-align: center;
    }

    h1,
    h2 {
      margin: 0;
      padding: 0;
      font-family: Arial, Helvetica, sans-serif;
      text-align: center;
    }

    .deskripsi-teks {
      margin: 0;
      font-weight: bold;
      padding: 0;
      font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
    }

    .line1 {
      background-color: black;
      height: 4px;
    }

    .line2 {
      margin-top: 2px;
      background-color: black;
      height: 2px;
    }
  </style>
</head>

<body>
  <div class="header">
    <div class="logo-container">
      <img class="logo" src="{{storage_path('/app/public/logo-kota-samarinda.jpg')}}" alt="logo">
    </div>
    <div class="deskripsi-container">
      <h2>PEMERINTAH KOTA SAMARINDA</h2>
      <h1>DINAS PERUMAHAN DAN KAWASAN PERMUKIMAN</h1>
      <p class="deskripsi-teks">
        Jl. D.I Panjaitan Kel. Gn. Lingai Kec. Sungai Pinang, Samarinda 75117 <br>
        Website : disperkim.samarindakota.go.id Email : DPP_SMD@yahoo.com
      </p>
    </div>
  </div>
  <div class="line1"></div>
  <div class="line2"></div>