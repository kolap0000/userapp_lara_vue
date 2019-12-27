<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class StudentTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
    	DB::table('students')->truncate();
        $faker = Faker::create('App\Student');

     
		for ($i = 0; $i < 100; $i++) {
	        DB::table('students')->insert([
	        	'firstname' => $faker->firstName(),
	        	'lastname' => $faker->lastName(),
	        	'address' => $faker->streetAddress(),
	        	'created_at' => \Carbon\Carbon::now(),
	        	'Updated_at' => \Carbon\Carbon::now(),
	        ]);
    	}
    }
}
