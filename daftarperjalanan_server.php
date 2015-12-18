<?php
    require_once( "nusoap-0.9.5/lib/nusoap.php");
    $server = new soap_server();
    $server->configureWSDL('cek', 'urn:cek');

    $server->register('cari',
        array('stasiun_keberangkatan' => 'xsd:string', 'kelas' => 'xsd:string'),
        array('stasiun_keberangkatan'=>'xsd:Array'),
        'urn:cek','urn:cekAction');

    $server->register('cekPer',
        array('no_ka' => 'xsd:string'),
        array('no_ka'=>'xsd:Array'),
        'urn:cek','urn:cekAction');

    $server->register('cek',
        array('id_kelas' => 'xsd:string'),
        array('id_kelas'=>'xsd:Array'),
        'urn:cek','urn:cekAction');
		
    function dbConnect($query){
        try{
            $connect = mysql_connect("localhost","root","");
            $db = mysql_select_db("kereta_api");
            return mysql_query($query);
        } catch(Exception $e){
            echo $e->getMessage();
        }
    }

    function cari($stasiun_keberangkatan,$kelas){

        if(empty($stasiun_keberangkatan) or empty($kelas)  )
            return 'Please fill all the required fields';

        $stasiun_keberangkatan = strip_tags(mysql_real_escape_string($stasiun_keberangkatan));
        $kelas = strip_tags(mysql_real_escape_string($kelas));
        

        $res = dbConnect("SELECT no_ka,nama_kereta,stasiun_keberangkatan,waktu_keberangkatan,stasiun_kedatangan,waktu_kedatangan,waktu_yang_ditempuh,kelas FROM daftar,kelas
                            WHERE daftar.id_kelas=kelas.id_kelas AND stasiun_keberangkatan like '%".$stasiun_keberangkatan."%' AND kelas='".$kelas."'
                            ORDER BY daftar.no_ka ASC");
                              
        while ($data = mysql_fetch_array($res))
        {
            $result[] = array('no_ka' => $data['no_ka'], 'nama_kereta' => $data['nama_kereta'], 'stasiun_keberangkatan' => $data['stasiun_keberangkatan'], 'waktu_keberangkatan' => $data['waktu_keberangkatan'], 'stasiun_kedatangan' => $data['stasiun_kedatangan'], 'waktu_kedatangan' => $data['waktu_kedatangan'], 'waktu_yang_ditempuh' => $data['waktu_yang_ditempuh'], 'kelas' => $data['kelas']);
        }
        return $result;
    }  

    function cekPer(){

        $res = dbConnect("SELECT * FROM daftar");
   
		while ($data = mysql_fetch_array($res))
		{
			$result[] = array('no_ka' => $data['no_ka'], 'nama_kereta' => $data['nama_kereta'], 'stasiun_keberangkatan' => $data['stasiun_keberangkatan'], 'waktu_keberangkatan' => $data['waktu_keberangkatan'], 'stasiun_kedatangan' => $data['stasiun_kedatangan'], 'waktu_kedatangan' => $data['waktu_kedatangan'], 'waktu_yang_ditempuh' => $data['waktu_yang_ditempuh'], 'id_kelas' => $data['id_kelas']);
		}
		return $result;
    }    

    function cek(){

        $res = dbConnect("SELECT * FROM kelas");
   
        while ($data = mysql_fetch_array($res))
        {
            $result[] = array('id_kelas' => $data['id_kelas'], 'kelas' => $data['kelas']);
        }
        return $result;
    }  

    $HTTP_RAW_POST_DATA = isset($HTTP_RAW_POST_DATA)
        ? $HTTP_RAW_POST_DATA : '';
    $server->service($HTTP_RAW_POST_DATA);
