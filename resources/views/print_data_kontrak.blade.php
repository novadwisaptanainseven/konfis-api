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
      height: 125px;
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
      <img class="logo" src="{{storage_path('/app/public/logo_disperkim.png')}}" alt="logo">
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

  <p><b>Tanggal</b> : {{$date}}</p>

  <h2 style="font-family: Arial, Helvetica, sans-serif">{{$title}}</h2>

  <table border="1" class="my-table" cellpadding="5">
    <tr>
      <th>No.</th>
      <th>No. Kontrak</th>
      <th>Uraian</th>
      <th>Tanda Terima</th>
    </tr>
    @foreach($data as $i => $d)
    <tr>
      <td align="center">{{$i+1}}</td>
      <td align="center">{{$d->no_kontrak}}</td>
      <td>{{$d->uraian}}</td>
      <td>{{$d->tanda_terima}}</td>
    </tr>
    @endforeach
  </table>
</body>

<!-- <script type="text/php">
  if ( isset($pdf) ) { 
    $pdf->page_script('
        if ($PAGE_COUNT > 1) {
            $font = $fontMetrics->get_font("Arial, Helvetica, sans-serif", "normal");
            $size = 12;
            $pageText = "Page " . $PAGE_NUM . " of " . $PAGE_COUNT;
            $y = 15;
            $x = 520;
            $pdf->text($x, $y, $pageText, $font, $size);
        } 
    ');
}
</script> -->

</html>