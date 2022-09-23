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

        $module = DB::select('select description from course_module where id_course_module_parent = 1');
        $id_module = DB::select('select DISTINCT id_course_module_parent,name from course_module where id_course = 2 and id_course_module_parent IS NOT NULL;');

        $html_code = "<!-- This is a *view* - HTML markup that defines the appearance of your UI -->
        <p>First name: <strong>todo</strong></p>
        <p>Last name: <strong>todo</strong></p>";
        $js_code = "// This is a simple *viewmodel* - JavaScript that defines the data and behavior of your UI
function AppViewModel() {
this.firstName = 'Bert';
this.lastName = 'Bertington';
}
// Activates knockout.js
ko.applyBindings(new AppViewModel());";
        return view('knockout-materi1', ['module' => $module, 'id_module' => $id_module,'html_code'=>$html_code, 'js_code' => $js_code]);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($id)
    {
        if ($id == 1) {
            $module = DB::select('select description from course_module where id_course_module_parent = 1');
            $id_module = DB::select('select DISTINCT id_course_module_parent,name from course_module where id_course = 2 and id_course_module_parent IS NOT NULL;');
            $html_code = "<!-- This is a *view* - HTML markup that defines the appearance of your UI -->
        <p>First name: <strong>todo</strong></p>
        <p>Last name: <strong>todo</strong></p>";
            $js_code = "// This is a simple *viewmodel* - JavaScript that defines the data and behavior of your UI
function AppViewModel() {
this.firstName = 'Bert';
this.lastName = 'Bertington';
}
// Activates knockout.js
ko.applyBindings(new AppViewModel());";
            return view('knockout-materi1', ['module' => $module, 'id_module' => $id_module, 'html_code' => $html_code, 'js_code' => $js_code]);
        } elseif ($id == 7) {
            $module = DB::select('select description  from course_module where id_course_module_parent = 7');
            $id_module = DB::select('select DISTINCT id_course_module_parent,name from course_module where id_course = 2 and id_course_module_parent IS NOT NULL;');
            $html_code = "<h2>Your seat reservations</h2>
                        <table>
                            <thead><tr>
                                <th>Passenger name</th><th>Meal</th><th>Surcharge</th><th></th>
                            </tr></thead>
                            <!-- Todo: Generate table body -->
                            <tbody></tbody>
                        </table>";
            $js_code = "// Class to represent a row in the seat reservations grid
function SeatReservation(name, initialMeal) {
    var self = this;
    self.name = name;
    self.meal = ko.observable(initialMeal);
}

// Overall viewmodel for this screen, along with initial state
function ReservationsViewModel() {
    var self = this;

    // Non-editable catalog data - would come from the server
    self.availableMeals = [
        { mealName: 'Standard (sandwich)', price: 0 },
        { mealName: 'Premium (lobster)', price: 34.95 },
        { mealName: 'Ultimate (whole zebra)', price: 290 }
    ];

    // Editable data
    self.seats = ko.observableArray([
        new SeatReservation('Steve', self.availableMeals[0]),
        new SeatReservation('Bert', self.availableMeals[0])
    ]);
}

ko.applyBindings(new ReservationsViewModel());";
            return view('knockout-materi1', ['module' => $module, 'id_module' => $id_module, 'html_code' => $html_code, 'js_code' => $js_code]);
        } elseif ($id == 13) {
            $module = DB::select('select description from course_module where id_course_module_parent = 13');
            $id_module = DB::select('select DISTINCT id_course_module_parent,name from course_module where id_course = 2 and id_course_module_parent IS NOT NULL;');
            $html_code = "<h3 data-bind='text: question'></h3>
<p>Please distribute <b data-bind='text: pointsBudget'></b> points between the following options.</p>

<table>
    <thead><tr><th>Option</th><th>Importance</th></tr></thead>
    <tbody data-bind='foreach: answers'>
        <tr>
            <td data-bind='text: answerText'></td>
            <td><select data-bind='options: [1,2,3,4,5], value: points'></select></td>
        </tr>
    </tbody>
</table>

<h3 data-bind='visible: pointsUsed() > pointsBudget'>You've used too many points! Please remove some.</h3>
<p>You've got <b data-bind='text: pointsBudget - pointsUsed()'></b> points left to use.</p>
<button data-bind='enable: pointsUsed() <= pointsBudget, click: save'>Finished</button>";
            $js_code = "function Answer(text) { this.answerText = text; this.points = ko.observable(1); }

function SurveyViewModel(question, pointsBudget, answers) {
    this.question = question;
    this.pointsBudget = pointsBudget;
    this.answers = $.map(answers, function(text) { return new Answer(text) });
    this.save = function() { alert('To do') };

    this.pointsUsed = ko.computed(function() {
        var total = 0;
        for (var i = 0; i < this.answers.length; i++)
            total += this.answers[i].points();
        return total;
    }, this);
}

ko.applyBindings(new SurveyViewModel('Which factors affect your technology choices?', 10, [
   'Functionality, compatibility, pricing - all that boring stuff',
   'How often it is mentioned on Hacker News',
   'Number of gradients/dropshadows on project homepage',
   'Totally believable testimonials on project homepage'
]));";
            return view('knockout-materi1', ['module' => $module, 'id_module' => $id_module, 'html_code' => $html_code, 'js_code' => $js_code]);
        } elseif ($id == 18) {
            $module = DB::select('select description from course_module where id_course_module_parent = 18');
            $id_module = DB::select('select DISTINCT id_course_module_parent,name from course_module where id_course = 2 and id_course_module_parent IS NOT NULL;');
            $html_code = "<!-- This is a *view* - HTML markup that defines the appearance of your UI -->
        <p>First name: <strong>todo</strong></p>
        <p>Last name: <strong>todo</strong></p>";
            $js_code = "// This is a simple *viewmodel* - JavaScript that defines the data and behavior of your UI
function AppViewModel() {
this.firstName = 'Bert';
this.lastName = 'Bertington';
}
// Activates knockout.js
ko.applyBindings(new AppViewModel());";
            return view('knockout-materi1', ['module' => $module, 'id_module' => $id_module, 'html_code' => $html_code, 'js_code' => $js_code]);
        }
    }

    // public function index2()
    // {
    //     $module = DB::select('select description from course_module where id_course_module_parent = 7');
    //     return view('knockout-materi2', ['module' => $module]);
    // }
    // // public function index3()
    // // {
    // //     $module = DB::select('select description from course_module where id_course_module_parent = 13');
    // //     return view('knockout-materi3', ['module' => $module]);
    // // }
    // public function index4()
    // {
    //     $module = DB::select('select description from course_module where id_course_module_parent = 13');
    //     return view('knockout-materi4', ['module' => $module]);
    // }
    // public function index5()
    // {
    //     $module = DB::select('select description from course_module where id_course_module_parent = 18');
    //     return view('knockout-materi5', ['module' => $module]);
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
