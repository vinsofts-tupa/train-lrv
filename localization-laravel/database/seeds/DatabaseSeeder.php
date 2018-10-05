<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
         $this->call(LocalizationTableSeeder::class);
    }
}
class LocalizationTableSeeder extends Seeder
	{
	    public function run()
	    {
	        DB::table('localization')->insert([
	        	array('in_code'=>'title','en'=>'Hello','vn'=>'Xin Chào','page'=>'client'),
	        	array('in_code'=>'add','en'=>'Add','vn'=>'Thêm','page'=>'client'),
	        	array('in_code'=>'edit','en'=>'Edit','vn'=>'Sửa','page'=>'client'),
	        	array('in_code'=>'delete','en'=>'Delete','vn'=>'Xóa','page'=>'client'),
	        ]);
	    }
	}
