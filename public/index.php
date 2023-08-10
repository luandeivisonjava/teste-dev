<?php

require '../vendor/autoload.php';

use app\controllers\HomeController;
use app\models\Cards;
use Slim\Factory\AppFactory;
use Illuminate\Database\Capsule\Manager as Capsule;


$capsule = new Capsule();

$app = AppFactory::create();

$capsule->addConnection(require __DIR__ . '/eloquent.php');
$capsule->setAsGlobal();
$capsule->bootEloquent();

$publicPath = __DIR__ . '/public';


$app->get('/', [HomeController::class, 'index']);


$app->run();
