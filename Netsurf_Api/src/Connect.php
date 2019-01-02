<?php 
// http://localhost/netsurf/Netsurf_Api/public/connect/
$app->post('/connect', function($request, $response){
	$handler = new IOhandler;
	$data = json_decode($request->getBody());
	$username = $data->username;
	$password = $data->password;
	$sth = $handler->connect($username, $password);
	return $response->withJson($sth);
});
