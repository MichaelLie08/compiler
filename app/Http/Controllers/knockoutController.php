<?php

namespace App\Http\Controllers;

use App\Knockout;
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
        $knockout = DB::select('select * from member_course');
        if ($knockout[0]->progress == 1) {
            $module = DB::select('select * from modul_tutorial');
            return view('knockout-materi1', ['module' => $module, 'knockout' => $knockout]);
        } else if ($knockout[0]->progress == 2) {
            $module = DB::select('select * from modul_tutorial');
            return view('knockout-materi2', ['module' => $module, 'knockout' => $knockout]);
        } else if ($knockout[0]->progress == 3) {
            $module = DB::select('select * from modul_tutorial');
            return view('knockout-materi3', ['module' => $module, 'knockout' => $knockout]);
        } else if ($knockout[0]->progress == 4) {
            $module = DB::select('select * from modul_tutorial');
            return view('knockout-materi4', ['module' => $module, 'knockout' => $knockout]);
        } else if ($knockout[0]->progress == 5) {
            $module = DB::select('select * from modul_tutorial');
            return view('knockout-materi5', ['module' => $module, 'knockout' => $knockout]);
        }
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $module = DB::select('select * from modul_tutorial');
        return view('knockout-materi1', ['module' => $module]);
    }

    public function index2()
    {
        $module = DB::select('select * from modul_tutorial');
        return view('knockout-materi2', ['module' => $module]);
    }
    public function index3()
    {
        $module = DB::select('select * from modul_tutorial');
        return view('knockout-materi3', ['module' => $module]);
    }
    public function index4()
    {
        $module = DB::select('select * from modul_tutorial');
        return view('knockout-materi4', ['module' => $module]);
    }
    public function index5()
    {
        $module = DB::select('select * from modul_tutorial');
        return view('knockout-materi5', ['module' => $module]);
    }

    public function next($id){
        $course = knockout::find($id);
        $progress = $course->progress;
        $data = array(
            'progress' => $progress+1
        );
        DB::table('member_course')->where('id',$id)->update($data);
        return redirect('/');
    }
}
