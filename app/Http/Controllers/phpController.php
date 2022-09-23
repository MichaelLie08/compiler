<?php

namespace App\Http\Controllers;

use app\Models\Php;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Validator;

class phpController extends Controller
{
    public function __construct()
    {

        $module = DB::select('select description from course_module where id_course_module_parent = 24');
        $id_module = DB::select('select DISTINCT id_course_module_parent,name from course_module where id_course = 6 and id_course_module_parent IS NOT NULL;');
        // $knockout = DB::select('select * from member_course');
        // if ($knockout[0]->progress == 1) {
        //     $module = DB::select('select * from modul_tutorial');
        //     return view('phpcompiler.ide', ['module' => $module, 'knockout' => $knockout]);
        // } else if ($knockout[0]->progress == 2) {
        //     $module = DB::select('select * from modul_tutorial');
        //     return view('phpcompiler.ide2', ['module' => $module, 'knockout' => $knockout]);
        // } else if ($knockout[0]->progress == 3) {
        //     $module = DB::select('select * from modul_tutorial');
        //     return view('phpcompiler.ide3', ['module' => $module, 'knockout' => $knockout]);
        // } else if ($knockout[0]->progress == 4) {
        //     $module = DB::select('select * from modul_tutorial');
        //     return view('phpcompiler.ide4', ['module' => $module, 'knockout' => $knockout]);
        // } else if ($knockout[0]->progress == 5) {
        //     $module = DB::select('select * from modul_tutorial');
        //     return view('phpcompiler.ide5', ['module' => $module, 'knockout' => $knockout]);
        // }
        return view('phpcompiler.ide', ['module' => $module, 'id_module' => $id_module]);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function php($id)
    {
        if ($id == 24) {
            $module = DB::select('select description from course_module where id_course_module_parent = 24');
            $id_module = DB::select('select DISTINCT id_course_module_parent,name from course_module where id_course = 6 and id_course_module_parent IS NOT NULL;');
            return view('phpcompiler.ide', ['module' => $module, 'id_module' => $id_module]);
        } elseif($id == 26){
            $module = DB::select('select description from course_module where id_course_module_parent = 26');
            $id_module = DB::select('select DISTINCT id_course_module_parent,name from course_module where id_course = 6 and id_course_module_parent IS NOT NULL;');
            return view('phpcompiler.ide', ['module' => $module, 'id_module' => $id_module]);
        } elseif ($id == 28) {
            $module = DB::select('select description from course_module where id_course_module_parent = 28');
            $id_module = DB::select('select DISTINCT id_course_module_parent,name from course_module where id_course = 6 and id_course_module_parent IS NOT NULL;');
            return view('phpcompiler.ide', ['module' => $module, 'id_module' => $id_module]);
        } elseif ($id == 30) {
            $module = DB::select('select description from course_module where id_course_module_parent = 30');
            $id_module = DB::select('select DISTINCT id_course_module_parent,name from course_module where id_course = 6 and id_course_module_parent IS NOT NULL;');
            return view('phpcompiler.ide', ['module' => $module, 'id_module' => $id_module]);
        } elseif ($id == 32) {
            $module = DB::select('select description from course_module where id_course_module_parent = 32');
            $id_module = DB::select('select DISTINCT id_course_module_parent,name from course_module where id_course = 6 and id_course_module_parent IS NOT NULL;');
            return view('phpcompiler.ide', ['module' => $module, 'id_module' => $id_module]);
        }

    }

    // public function php2()
    // {
    //     $module = DB::select('select * from modul_tutorial');
    //     return view('phpcompiler.ide2', ['module' => $module]);
    // }
    // public function php3()
    // {
    //     $module = DB::select('select * from modul_tutorial');
    //     return view('phpcompiler.ide3', ['module' => $module]);
    // }
    // public function php4()
    // {
    //     $module = DB::select('select * from modul_tutorial');
    //     return view('phpcompiler.ide4', ['module' => $module]);
    // }
    // public function php5()
    // {
    //     $module = DB::select('select * from modul_tutorial');
    //     return view('phpcompiler.ide5', ['module' => $module]);
    // }

    public function next($id)
    {
        $course = knockout::find($id);
        $progress = $course->progress;
        $data = array(
            'progress' => $progress + 1
        );
        DB::table('member_course')->where('id', $id)->update($data);
        return redirect('/');
    }

}
