<?php 

$app->post('/ChangePass', function($request, $response){
	$handler = new IOhandler;
	$data = json_decode($request->getBody());
	$username = $data->username;
	$password = $data->password;
	$newpass = $data->newpass;
	$sessionId = $data->sessionId;
	$orderbyparam = "_id";
	$sth = $handler->updatePassword('_radcheck', $username, $oldpass, $newpass, $sessionId);
	return $this->response->withJson($sth);
});