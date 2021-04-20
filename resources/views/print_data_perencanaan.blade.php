@include('templates.header')

<p><b>Tanggal</b> : {{$date}}</p>

  <h2 style="font-family: Arial, Helvetica, sans-serif">{{$title}}</h2>

  <table border="1" class="my-table" cellpadding="5">
    <tr>
      <th>No.</th>
      <th>Kode Bidang</th>
      <th>No. Pek</th>
      <th>No. DPA</th>
      <th>Uraian</th>
      <th>Tanggal</th>
      <th>Tanda Terima</th>
    </tr>
    @foreach($data as $i => $d)
    <tr>
      <td align="center">{{$i+1}}</td>
      <td align="center">{{$d->kode_bidang}}</td>
      <td align="center">{{$d->no_pek}}</td>
      <td align="center">{{$d->no_dpa}}</td>
      <td>{{$d->uraian}}</td>
      <td align="center">{{date("d/m/Y", strtotime($d->tanggal))}}</td>
      <td align="center">{{$d->ttd}}</td>
    </tr>
    @endforeach
  </table>

@include('templates.footer')