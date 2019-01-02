<?php 

$app->post('/dataBalance', function ($request, $response) {
		$handler = new IOhandler;
		$data = json_decode($request->getBody());
		$username = $data->username;
		$password = $data->password;
        $sth = $handler->dataBalance($username, $password);
        return $this->response->withJson($sth);
    });

$app->post('/cashBalance', function ($request, $response) {
		$handler = new IOhandler;
		$data = json_decode($request->getBody());
		$username = $data->username;
		$password = $data->password;
        $sth = $handler->cashBalance($username, $password);
        return $this->response->withJson($sth);
    });