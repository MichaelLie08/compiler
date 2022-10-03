<?php

namespace App\Http\Controllers;

use app\Models\python;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Validator;

class pythonController extends Controller
{
    public function __construct()
    {

        $module = DB::select('select description from course_module where id_course_module_parent = 34');
        $id_module = DB::select('select DISTINCT id_course_module_parent,name from course_module where id_course = 7 and id_course_module_parent IS NULL;');
        return view('pythoncompiler', ['module' => $module, 'id_module' => $id_module]);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function python($id)
    {
        if ($id == 34) {
            $module = DB::select('select description from course_module where id_course_module_parent = 34');
            $id_module = DB::select('select DISTINCT id_course_module_parent,name from course_module where id_course = 7 and id_course_module_parent IS  NULL;');
            return view('pythoncompiler', ['module' => $module, 'id_module' => $id_module]);
        } elseif ($id == 36) {
            $module = DB::select('select description from course_module where id_course_module_parent = 36');
            $id_module = DB::select('select DISTINCT id_course_module_parent,name from course_module where id_course = 7 and id_course_module_parent IS  NULL;');
            return view('pythoncompiler', ['module' => $module, 'id_module' => $id_module]);
        } elseif ($id == 39) {
            $module = DB::select('select description from course_module where id_course_module_parent = 39');
            $id_module = DB::select('select DISTINCT id_course_module_parent,name from course_module where id_course = 7 and id_course_module_parent IS NULL;');
            return view('pythoncompiler', ['module' => $module, 'id_module' => $id_module]);
        } elseif ($id == 41) {
            $module = DB::select('select description from course_module where id_course_module_parent = 41');
            $id_module = DB::select('select DISTINCT id_course_module_parent,name from course_module where id_course = 7 and id_course_module_parent IS  NULL;');
            return view('pythoncompiler', ['module' => $module, 'id_module' => $id_module]);
        } elseif ($id == 43) {
            $module = DB::select('select description from course_module where id_course_module_parent = 43');
            $id_module = DB::select('select DISTINCT id_course_module_parent,name from course_module where id_course = 7 and id_course_module_parent IS  NULL;');
            return view('pythoncompiler', ['module' => $module, 'id_module' => $id_module]);
        } elseif ($id == 45) {
            $module = DB::select('select description from course_module where id_course_module_parent = 45');
            $id_module = DB::select('select DISTINCT id_course_module_parent,name from course_module where id_course = 7 and id_course_module_parent IS  NULL;');
            return view('pythoncompiler', ['module' => $module, 'id_module' => $id_module]);
        }
    }
}
