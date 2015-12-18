<html>
    <head>
        <title>Kereta Api</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">        
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/bootstrap-responsive.css" rel="stylesheet">
    </head>

<body style="background:#ecf0f1">			
  	<div class="navbar navbar-fixed-top" style="position: absolute;">
		<div class="navbar-inner">
			<div class="container" style="background:lightblue;width: auto; padding: 0 20px;">
				<a class="brand" href="index.php">Kereta Api Indonesia</a>
					<ul class="nav">
						<li class="active"><a href="home.php">Kereta Api</a></li>
						<li><a href="kereta_api.php">Daftar Perjalanan</a></li>
						<li><a href="kelas.php">Kelas Perjalanan</a></li>
					
					</ul>
			</div>
		</div>
	</div>

<div class="container">
			<div class="row" style="margin-top:100px;">
				<div class="" style="background:pink;border:1px solid #bbb;border-radius:10px;padding:10px 10px 10px 10px;">
					<form class="form-search" action="" method="post">
						<h4 class="text-left"><center>Sistem Pencarian Jadwal Perjalanan Kereta Api</center></h4> <br>
						<center><label>Stasiun Keberangkatan:&nbsp;</label><input name="stasiun_keberangkatan" type="text" placeholder="Masukkan Stasiun Keberangkatan"><br> <br>
						<center><label>Kelas :&nbsp;</label>
							<select name="kelas"/>
                        			<option>Eksekutif</option>
                        			<option>Bisnis AC</option>
                        			<option>Ekonomi AC</option>
                        			<option>Eksekutif dan Bisnis AC</option>
                        			<option>Eksekutif, Bisnis AC dan Ekonomi AC</option>
                        			<option>Eksekutif dan Ekonomi AC</option>
                        	</select>  <br> 
						<br> <center><button name="submit" type="submit" class="btn">Search</button><br> <br>			
					</form>	
					</div>		
		
			</div>
    </div> 
				
   	  <script src="js/jquery.js"></script>
      <!-- Bootstrap javascript -->
      <script src="js/bootstrap.min.js"></script>
    </body>
</html>

<?php
    try{
        require_once("nusoap-0.9.5/lib/nusoap.php");	
        $client = new nusoap_client("http://localhost/kereta_api/daftarperjalanan_server.php?wsdl");
        if (isset($_POST['submit'])) {
			$stasiun_keberangkatan = $_POST['stasiun_keberangkatan'];
			$kelas = $_POST['kelas'];
			$response = $client->call('cari', array('stasiun_keberangkatan'=>$stasiun_keberangkatan, 'kelas'=>$kelas));
            if (is_array($response)){
				echo "
				<div class='container' >
				<div class=' ' align='center' style='margin-top:50px'>
						<table class='table table-bordered table-hover table-striped' >
									<tr>
										<th>Nomor Kereta</th>
										<th>Nama Kereta</th>
										<th>Stasiun Keberangkatan</th>
										<th>Waktu Keberangkatan</th>	
										<th>Stasiun Kedatangan</th>	
										<th>Waktu Kedatangan</th>
										<th>Waktu yang Ditempuh</th>
										<th>Kelas</th>			
									</tr>
									";
                foreach($response as $data){
                     echo "
								
									<tr>
										<td>".$data['no_ka']."</td>
										<td>".$data['nama_kereta']."</td>
										<td>".$data['stasiun_keberangkatan']."</td>
										<td>".$data['waktu_keberangkatan']."</td>	
										<td>".$data['stasiun_kedatangan']."</td>
										<td>".$data['waktu_kedatangan']."</td>
										<td>".$data['waktu_yang_ditempuh']."</td>
										<td>".$data['kelas']."</td>
									</tr>
									";
									}
									echo "
									</tbody>
								</table>
							</div>
					</div>";
           
            } 
			else echo "<br><center><p>Data tidak ditemukan</p></center>";
		}
	} catch(SoapFault $e){
        echo $e->getMessage();}