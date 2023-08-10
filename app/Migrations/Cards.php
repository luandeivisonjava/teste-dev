<?php

namespace app\Migrations;

use Illuminate\Database\Capsule\Manager as Capsule;

class Cards
{
    public function up()
    {
        Capsule::schema()->create('cards', function ($table) {
            $table->increments('id');
            $table->string('name');
            $table->string('description');
            $table->string('images');
            $table->timestamps();
        });
    }
    public function down()
    {
        Capsule::schema()->dropIfExists('cards');
    }
}
