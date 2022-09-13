
html_code = document.querySelector('.html-code textarea');
js_code = document.querySelector('.js-code textarea');
result = document.querySelector('#result');





function run( ) {
    // Storing data in Local Storage
    localStorage.setItem('html_code', html_code.value);
    localStorage.setItem('js_code',  js_code.value  );
    const data={html:html_code.value,js:js_code.value}
    $.ajax({ type:"POST", url: "indexes2/vKnock.php",data:data, success: function(result){

        $("#result").html(result);
        console.log(result);
        $('#result').attr( 'srcdoc',result)


      }});


}


// Checking if user is typing anything in input field
html_code.onkeyup = () => run();
js_code.onkeyup = () => run();




// Accessing data stored in Local Storage. To make it more advanced you could check if there is any data stored in Local Storage.
html_code.value = `<h2>Your seat reservations</h2>

<table>
    <thead><tr>
        <th>Passenger name</th><th>Meal</th><th>Surcharge</th><th></th>
    </tr></thead>
    <!-- Todo: Generate table body -->
    <tbody></tbody>
</table>`;

js_code.value = `// Class to represent a row in the seat reservations grid
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
        { mealName: "Standard (sandwich)", price: 0 },
        { mealName: "Premium (lobster)", price: 34.95 },
        { mealName: "Ultimate (whole zebra)", price: 290 }
    ];

    // Editable data
    self.seats = ko.observableArray([
        new SeatReservation("Steve", self.availableMeals[0]),
        new SeatReservation("Bert", self.availableMeals[0])
    ]);
}

ko.applyBindings(new ReservationsViewModel());`;
