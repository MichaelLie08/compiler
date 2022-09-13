
html_code = document.querySelector('.html-code textarea');
js_code = document.querySelector('.js-code textarea');
result = document.querySelector('#result');





function run( ) {
    // Storing data in Local Storage
    localStorage.setItem('html_code', html_code.value);
    localStorage.setItem('js_code',  js_code.value  );
    const data={html:html_code.value,js:js_code.value}
    $.ajax({ type:"POST", url: "indexes3/vKnock.php",data:data, success: function(result){

        $("#result").html(result);
        console.log(result);
        $('#result').attr( 'srcdoc',result)


      }});


}


// Checking if user is typing anything in input field
html_code.onkeyup = () => run();
js_code.onkeyup = () => run();




// Accessing data stored in Local Storage. To make it more advanced you could check if there is any data stored in Local Storage.
html_code.value = `<h3 data-bind="text: question"></h3>
<p>Please distribute <b data-bind="text: pointsBudget"></b> points between the following options.</p>

<table>
    <thead><tr><th>Option</th><th>Importance</th></tr></thead>
    <tbody data-bind="foreach: answers">
        <tr>
            <td data-bind="text: answerText"></td>
            <td><select data-bind="options: [1,2,3,4,5], value: points"></select></td>
        </tr>
    </tbody>
</table>

<h3 data-bind="visible: pointsUsed() > pointsBudget">You've used too many points! Please remove some.</h3>
<p>You've got <b data-bind="text: pointsBudget - pointsUsed()"></b> points left to use.</p>
<button data-bind="enable: pointsUsed() <= pointsBudget, click: save">Finished</button>`;
js_code.value = `function Answer(text) { this.answerText = text; this.points = ko.observable(1); }

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

ko.applyBindings(new SurveyViewModel("Which factors affect your technology choices?", 10, [
   "Functionality, compatibility, pricing - all that boring stuff",
   "How often it is mentioned on Hacker News",
   "Number of gradients/dropshadows on project homepage",
   "Totally believable testimonials on project homepage"
]));`;
