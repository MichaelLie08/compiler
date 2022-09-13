
html_code = document.querySelector('.html-code textarea');
js_code = document.querySelector('.js-code textarea');
result = document.querySelector('#result');





function run( ) {
    // Storing data in Local Storage
    localStorage.setItem('html_code', html_code.value);
    localStorage.setItem('js_code',  js_code.value  );
    const data={html:html_code.value,js:js_code.value}
    $.ajax({ type:"POST", url: "indexes4/vKnock.php",data:data, success: function(result){

        $("#result").html(result);
        console.log(result);
        $('#result').attr( 'srcdoc',result)


      }});


}


// Checking if user is typing anything in input field
html_code.onkeyup = () => run();
js_code.onkeyup = () => run();




// Accessing data stored in Local Storage. To make it more advanced you could check if there is any data stored in Local Storage.
html_code.value = `<h3>Tasks</h3>

<form data-bind="submit: addTask">
    Add task: <input data-bind="value: newTaskText" placeholder="What needs to be done?" />
    <button type="submit">Add</button>
</form>

<ul data-bind="foreach: tasks, visible: tasks().length > 0">
    <li>
        <input type="checkbox" data-bind="checked: isDone" />
        <input data-bind="value: title, disable: isDone" />
        <a href="#" data-bind="click: $parent.removeTask">Delete</a>
    </li>
</ul>

You have <b data-bind="text: incompleteTasks().length">&nbsp;</b> incomplete task(s)
<span data-bind="visible: incompleteTasks().length == 0"> - it's beer time!</span>`;
js_code.value = `function Task(data) {
    this.title = ko.observable(data.title);
    this.isDone = ko.observable(data.isDone);
}

function TaskListViewModel() {
    // Data
    var self = this;
    self.tasks = ko.observableArray([]);
    self.newTaskText = ko.observable();
    self.incompleteTasks = ko.computed(function() {
        return ko.utils.arrayFilter(self.tasks(), function(task) { return !task.isDone() });
    });

    // Operations
    self.addTask = function() {
        self.tasks.push(new Task({ title: this.newTaskText() }));
        self.newTaskText("");
    };
    self.removeTask = function(task) { self.tasks.remove(task) };
}

ko.applyBindings(new TaskListViewModel());`;
