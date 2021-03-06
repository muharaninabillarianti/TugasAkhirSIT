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
						<li><a href="home.php">Kereta Api</a></li>
						<li class="active"><a href="kereta_api.php">Daftar Perjalanan</a></li>
						<li><a href="kelas.php">Kelas Perjalanan</a></li>
					</ul>
			</div>
		</div>
	</div>
	
	  	<div class="container">
			<div class="row" style="margin-top:80px;">
				<div>
					<form class="form-search" style="background:pink; action="" method="post">
						<h4 class="text-center">Daftar Perjalanan Kereta Api</h4> <br>		
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

        require_once("nusoap-0.9.5/lib/nusoap.php");	
        $client = new nusoap_client("http://localhost/kereta_api/daftarperjalanan_server.php?wsdl");
			$response = $client->call('cekPer');
            if (is_array($response)){
				echo "
				<div class='container' >
				<div class=' ' align='center'>
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
										<td>".$data['id_kelas']."</td>	
									</tr>
									";
									}
									echo "
									</tbody>
								</table>
							</div>
					</div>";
                
            } 
			else echo "<p>Data tidak ditemukan</p>";
		
	
?>