<?php 
// http://localhost/netsurf/Netsurf_Api/public/connect/
$app->post('/iconnect', function($request, $response){
	$handler = new IOhandler;
	$data = json_decode($request->getBody());
	$username = $data->username;
	$pin = $data->pin;
	$sth = $handler->iconnect($username, $pin);
	return $response->withJson($sth);
});
