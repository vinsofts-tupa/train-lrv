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
        $this->call(UsersTableSeeder::class);
    }
}
class UsersTableSeeder extends Seeder
{
    public function run()
    {
        DB::table('users')->insert([
            array('name'=>'Pham Anh D','email'=>'d@mail.com','password'=>bcrypt('123456')),
            array('name'=>'Pham Anh E','email'=>'e@mail.com','password'=>Hash::make('123456')),
        ]);
    }
}
