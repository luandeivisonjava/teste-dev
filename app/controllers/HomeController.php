<?php

namespace app\controllers;

use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use app\models\Cards;

class HomeController
{
    public function index(Request $request, Response $response)
    {
        $cards = Cards::all();

        view('home', ['cards' => $cards]);
        return $response;
    }
}
