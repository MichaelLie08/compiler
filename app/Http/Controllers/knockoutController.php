<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Validator;

class knockoutController extends Controller
{
    public function __construct()
    {
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $knockout = DB::select('select * from modul_tutorial');
        return view('index', ['knockout' => $knockout]);
    }
    public function index2()
    {
        $knockout = DB::select('select * from modul_tutorial');
        return view('index2', ['knockout' => $knockout]);
    }
    public function index3()
    {
        $knockout = DB::select('select * from modul_tutorial');
        return view('index3', ['knockout' => $knockout]);
    }
    public function index4()
    {
        $knockout = DB::select('select * from modul_tutorial');
        return view('index4', ['knockout' => $knockout]);
    }
    public function index5()
    {
        $knockout = DB::select('select * from modul_tutorial');
        return view('index5', ['knockout' => $knockout]);
    }
    public function test()
    {
        $knockout = DB::select('select * from modul_tutorial');
        return view('test');
    }

}
